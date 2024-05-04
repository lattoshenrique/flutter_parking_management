import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:vehicles/vehicles.dart';

import 'presentation/views/welcome_page.dart';

part 'base_app_module_routing.dart';

class _GlobalBinds extends Module {
  @override
  void binds(Injector i) {
    i.addInstance<HiveInterface>(Hive);
  }
}

class BaseAppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  List<Module> get imports => [
        _GlobalBinds(),
      ];

  @override
  void routes(RouteManager r) => BaseAppModuleRouting.routes(r);
}
