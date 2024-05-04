part of 'vehicles_module.dart';

abstract class VehiclesModuleBinds {
  static void binds(Injector i) {
    _viewModels(i);
  }

  static void _viewModels(Injector i) {
    i.add<VehicleListViewModel>(
      () => VehicleListViewModel(
        getAllVehiclesUsecase: i.get(),
        deleteVehicleUsecase: i.get(),
      ),
    );
  }
}
