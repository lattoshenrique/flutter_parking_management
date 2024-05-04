part of 'vehicles_module.dart';

abstract class VehiclesModuleRouting extends VehiclesCommonsModulePaths {
  static void routes(RouteManager r) {
    r.child(
      VehiclesCommonsModulePaths.root.path,
      child: (_) => const VehicleListPage(),
    );
  }
}
