import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../models/models.dart';

const String _kStorageKey = 'parking';

abstract class IParkingLocalDataSource {
  Future<ParkingModel> create(CreateVehicleParamsModel params);

  Future<List<ParkingModel>> getAll();

  Future<ParkingOrderModel> createOrder(
    CreateParkingOrderParamsModel params,
  );

  Future<ParkingOrderModel> updateOrder({
    required String parkingId,
    required String orderId,
    required UpdateParkingOrderParamsModel params,
  });
}

class ParkingLocalDataSource implements IParkingLocalDataSource {
  final IStorageClient<List<ParkingModel>> _storageClient;

  ParkingLocalDataSource(this._storageClient);

  @override
  Future<ParkingModel> create(CreateVehicleParamsModel params) async {
    final list = List<ParkingModel>.from(await getAll());

    final newObject = ParkingModel(
      id: const Uuid().v4(),
      name: params.name,
    );
    list.add(newObject);

    await _storageClient.save(_kStorageKey, list);
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

    list[parkingIndex] = list[parkingIndex].copyWith(orders: orders);

    await _storageClient.save(_kStorageKey, list);
    return newObject;
  }

  @override
  Future<List<ParkingModel>> getAll() async {
    final result = await _storageClient.read(_kStorageKey);
    return result != null ? List<ParkingModel>.from(result) : [];
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

    list[parkingIndex].orders[orderIndex] =
        list[parkingIndex].orders[orderIndex].copyWith(
              departureDate: params.departureDate,
            );

    await _storageClient.save(_kStorageKey, list);
    return list[parkingIndex].orders[orderIndex];
  }
}
