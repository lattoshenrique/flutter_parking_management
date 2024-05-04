part of 'vehicles_module.dart';

abstract class VehiclesModuleRouting {
  static const vehicleListPage = BasePath('/', VehiclesCommonsModulePaths.root);

  static void routes(RouteManager r) {
    r.child(
      vehicleListPage.path,
      child: (_) => const VehicleListPage(),
    );
  }
}
