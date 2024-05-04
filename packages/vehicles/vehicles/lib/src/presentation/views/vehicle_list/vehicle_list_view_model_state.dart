part of 'vehicle_list_view_model.dart';

@freezedNoHelpers
sealed class VehicleListViewModelState extends ViewModelState
    with _$VehicleListViewModelState {
  const factory VehicleListViewModelState.loading() =
      LoadingVehicleListViewModelState;

  const factory VehicleListViewModelState.loadingAllError(String message) =
      LoadingAllErrorVehicleListViewModelState;

  const factory VehicleListViewModelState.loaded({
    @Default([]) List<Vehicle> vehicles,
  }) = LoadedVehicleListViewModelState;

  const factory VehicleListViewModelState.loadingDelete({
    required List<Vehicle> vehicles,
    required int index,
  }) = LoadingDeleteVehicleListViewModelState;

  const factory VehicleListViewModelState.loadingDeleteError({
    required String message,
    required List<Vehicle> vehicles,
  }) = LoadingDeleteErrorVehicleListViewModelState;
}
