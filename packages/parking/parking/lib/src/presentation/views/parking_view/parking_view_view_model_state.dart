import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:parking_commons/parking_commons.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

part 'parking_view_view_model_state.freezed.dart';

@freezedNoHelpers
sealed class ParkingViewViewModelState extends ViewModelState
    with _$ParkingViewViewModelState {
  const factory ParkingViewViewModelState.idle() =
      IdleParkingViewViewModelState;

  const factory ParkingViewViewModelState.loading(Parking parking) =
      LoadingParkingViewViewModelState;

  const factory ParkingViewViewModelState.success({
    required Parking parking,
    @Default([]) List<Vehicle> vehicles,
  }) = SuccessParkingViewViewModelState;

  const factory ParkingViewViewModelState.createOrderSuccess() =
      UpdateOrderParkingViewViewModelState;

  const factory ParkingViewViewModelState.error() =
      ErrorParkingViewViewModelState;
}
