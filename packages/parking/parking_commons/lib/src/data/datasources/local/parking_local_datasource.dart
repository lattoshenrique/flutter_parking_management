import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../models/models.dart';

const String _kStorageKey = 'parking';

abstract class IParkingLocalDataSource {
  Future<ParkingModel> create(CreateParkingParamsModel params);

  Future<List<ParkingModel>> getAll();

  Future<ParkingOrderModel> createOrder(
    CreateParkingOrderParamsModel params,
  );

  Future<ParkingOrderModel> updateOrder({
    required String parkingId,
    required String orderId,
    required UpdateParkingOrderParamsModel params,
  });

  List<VehicleModel> get currentVehiclesParking;
}

class ParkingLocalDataSource implements IParkingLocalDataSource {
  final IStorageClient<List<ParkingModel>> _storageClient;

  ParkingLocalDataSource(
    this._storageClient,
  );

  @override
  Future<ParkingModel> create(CreateParkingParamsModel params) async {
    final list = List<ParkingModel>.from(await getAll());

    final newObject = ParkingModel(
      id: const Uuid().v4(),
      name: params.name,
    );
    list.add(newObject);

    await _storageClient.save(_kStorageKey, list);
    _updateCurrentVehiclesParking(list);
    return newObject;
  }

  @override
  Future<ParkingOrderModel> createOrder(
    CreateParkingOrderParamsModel params,
  ) async {
    final list = List<ParkingModel>.from(await getAll());
    final parkingIndex = list.indexWhere((e) => e.id == params.parkingId);

    final newObject = ParkingOrderModel(
      id: const Uuid().v4(),
      vehicle: params.vehicle,
      entryDate: DateTime.now(),
    );

    final orders = List<ParkingOrderModel>.from(list[parkingIndex].orders);
    orders.add(newObject);

    final newparking = list[parkingIndex].copyWith(orders: orders);

    list
      ..removeAt(parkingIndex)
      ..add(newparking);

    await _storageClient.save(_kStorageKey, list);

    _updateCurrentVehiclesParking(list);
    return newObject;
  }

  @override
  Future<List<ParkingModel>> getAll() async {
    final result = await _storageClient.read(_kStorageKey);
    if (result == null) return [];

    final parkingList = (result as List).cast<ParkingModel>()
      ..sort((a, b) {
        String letter(String value) => value.substring(0, 1);
        int number(String value) => int.parse(value.substring(1));

        final int compareLetter = letter(a.name).compareTo(letter(b.name));
        if (compareLetter != 0) {
          return compareLetter;
        }

        return number(a.name).compareTo(number(b.name));
      });

    _updateCurrentVehiclesParking(parkingList);
    return parkingList;
  }

  @override
  Future<ParkingOrderModel> updateOrder({
    required String parkingId,
    required String orderId,
    required UpdateParkingOrderParamsModel params,
  }) async {
    final list = List<ParkingModel>.from(await getAll());
    final parkingIndex = list.indexWhere((e) => e.id == parkingId);
    final orderIndex =
        list[parkingIndex].orders.indexWhere((e) => e.id == orderId);

    final updatedOrder = list[parkingIndex].orders[orderIndex].copyWith(
          departureDate: params.departureDate,
        );

    final newOrderList = List<ParkingOrderModel>.from(
      list[parkingIndex]
          .orders
          .whereNotIndexed((index, _) => index == orderIndex),
    )..add(updatedOrder);

    final updatedParking = list[parkingIndex].copyWith(orders: newOrderList);

    final newList = List<ParkingModel>.from(
      list.whereNotIndexed((index, _) => index == parkingIndex),
    )..add(updatedParking);

    await _storageClient.save(_kStorageKey, newList);
    _updateCurrentVehiclesParking(newList);
    return updatedOrder;
  }

  void _updateCurrentVehiclesParking(List<ParkingModel> parkingList) {
    _currentVehiclesParking.clear();

    for (final parking in parkingList) {
      for (final order in parking.orders) {
        if (order.departureDate == null) {
          _currentVehiclesParking.add(order.vehicle);
        }
      }
    }
  }

  @override
  List<VehicleModel> get currentVehiclesParking => _currentVehiclesParking;

  final List<VehicleModel> _currentVehiclesParking = [];
}
