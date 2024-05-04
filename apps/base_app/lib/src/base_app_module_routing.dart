part of 'base_app_module.dart';

abstract class BaseAppModuleRouting {
  static const root = BasePath('/');

  static void routes(RouteManager r) {
    r.module(
      root.path,
      module: VehiclesModule(),
    );
  }
}
