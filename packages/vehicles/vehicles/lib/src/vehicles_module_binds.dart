part of 'vehicles_module.dart';

abstract class VehiclesModuleBinds {
  static void binds(Injector i) {
    _viewModels(i);
  }

  static void _viewModels(Injector i) {
    i.add<VehicleListViewModel>(
      () => VehicleListViewModel(
        i.get(),
      ),
    );
    i.add<UpdateVehicleViewModel>(
      () => UpdateVehicleViewModel(
        i.get(),
        i.get(),
        i.get(),
      ),
    );
  }
}
