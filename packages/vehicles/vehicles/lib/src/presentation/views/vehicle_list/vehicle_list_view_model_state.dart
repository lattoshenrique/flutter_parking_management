part of 'vehicle_list_view_model.dart';

@freezedNoHelpers
sealed class VehicleListViewModelState extends ViewModelState
    with _$VehicleListViewModelState {
  const factory VehicleListViewModelState.loading() =
      LoadingVehicleListViewModelState;

  const factory VehicleListViewModelState.error(String message) =
      ErrorVehicleListViewModelState;

  const factory VehicleListViewModelState.loaded({
    @Default([]) List<Vehicle> vehicles,
  }) = LoadedVehicleListViewModelState;
}
