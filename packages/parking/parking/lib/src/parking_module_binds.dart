part of 'parking_module.dart';

abstract class ParkingModuleBinds {
  static void binds(Injector i) {
    _viewModels(i);
  }

  static void _viewModels(Injector i) {
    i.add<AllParkingViewModel>(
      () => AllParkingViewModel(
        i.get(),
        i.get(),
      ),
    );
    i.add<ParkingViewViewModel>(
      () => ParkingViewViewModel(
        i.get(),
        i.get(),
        i.get(),
        i.get(),
      ),
    );
  }
}
