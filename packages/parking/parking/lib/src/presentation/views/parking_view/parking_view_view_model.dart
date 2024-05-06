import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:parking_commons/parking_commons.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import 'parking_view_view_model_state.dart';

class ParkingViewViewModel extends ViewModel<ParkingViewViewModelState> {
  final IGetCurrentVehiclesParkingUsecase _getCurrentVehiclesParkingUsecase;
  final IUpdateOrderUsecase _updateOrderUsecase;
  final IGetAllVehiclesUsecase _getAllVehiclesUsecase;
  final ICreateOrderUsecase _createOrderUsecase;

  ParkingViewViewModel(
    this._getCurrentVehiclesParkingUsecase,
    this._updateOrderUsecase,
    this._getAllVehiclesUsecase,
    this._createOrderUsecase,
  ) : super(const ParkingViewViewModelState.idle());

  List<Vehicle> _vehicles = [];

  void createOrder(Parking parking, CreateParkingOrderParams params) async {
    emit(ParkingViewViewModelState.loading(parking));

    final res = await _createOrderUsecase(params);

    if (res.isLeft()) {
      emit(const ParkingViewViewModelState.error());
      return;
    }

    final parkingOrder = res.toRight();
    final parkingOrders = List<ParkingOrder>.from(parking.orders);
    parkingOrders.add(parkingOrder);

    emit(
      ParkingViewViewModelState.success(
        parking: parking.copyWith(orders: parkingOrders),
        vehicles: _vehicles,
      ),
    );
  }

  void getVehicles(Parking parking) async {
    emit(ParkingViewViewModelState.loading(parking));

    final [
      vehiclesRes as Either<VehicleFailure, List<Vehicle>>,
      currentVehiclesParkingRes as Either<ParkingFailure, List<Vehicle>>
    ] = await Future.wait([
      _getAllVehiclesUsecase(),
      _getCurrentVehiclesParkingUsecase(),
    ]);

    if (vehiclesRes.isLeft() || currentVehiclesParkingRes.isLeft()) {
      emit(const ParkingViewViewModelState.error());
      return;
    }

    final currentVehiclesParking = currentVehiclesParkingRes.toRight();

    _vehicles = List<Vehicle>.from(
      vehiclesRes.toRight().whereNot(currentVehiclesParking.contains),
    );

    emit(
      ParkingViewViewModelState.success(
        parking: parking,
        vehicles: _vehicles,
      ),
    );
  }

  void completeOrder({
    required Parking parking,
    required String orderId,
    required UpdateParkingOrderParams params,
  }) async {
    emit(ParkingViewViewModelState.loading(parking));

    final res = await _updateOrderUsecase(
      orderId: orderId,
      params: params,
      parkingId: parking.id,
    );

    if (res.isLeft()) {
      emit(const ParkingViewViewModelState.error());
      return;
    }

    final parkingOrder = res.toRight();
    final parkingOrders =
        List<ParkingOrder>.from(parking.orders.where((e) => e.id != orderId));
    parkingOrders.add(parkingOrder);

    emit(
      ParkingViewViewModelState.success(
        parking: parking.copyWith(orders: parkingOrders),
        vehicles: _vehicles,
      ),
    );
  }
}
