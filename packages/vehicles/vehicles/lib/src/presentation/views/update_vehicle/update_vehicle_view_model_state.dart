import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';

part 'update_vehicle_view_model_state.freezed.dart';

@freezedNoHelpers
sealed class UpdateVehicleViewModelState extends ViewModelState
    with _$UpdateVehicleViewModelState {
  const factory UpdateVehicleViewModelState.idle() =
      IdleUpdateVehicleViewModelState;

  const factory UpdateVehicleViewModelState.loading() =
      LoadingUpdateVehicleViewModelState;

  const factory UpdateVehicleViewModelState.success() =
      SuccessUpdateVehicleViewModelState;

  const factory UpdateVehicleViewModelState.successDelete() =
      SuccessDeleteVehicleViewModelState;

  const factory UpdateVehicleViewModelState.error([String? message]) =
      ErrorUpdateVehicleViewModelState;
}
