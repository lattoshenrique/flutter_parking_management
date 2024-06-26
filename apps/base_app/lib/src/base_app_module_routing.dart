part of 'base_app_module.dart';

abstract class BaseAppModuleRouting {
  static const root = BasePath('/');

  static void routes(RouteManager r) {
    r.child(
      root.path,
      child: (_) => const WelcomePage(),
    );
    r.module(
      HomeModuleRouting.root.path,
      module: HomeModule(),
    );
    r.module(
      VehiclesCommonsModulePaths.root.path,
      module: VehiclesModule(),
    );
    r.module(
      ParkingCommonsModulePaths.root.path,
      module: ParkingModule(),
    );
  }
}
