import 'package:common_deps/common_deps.dart';

import 'vehicles_commons_module_binds.dart';

class VehiclesCommonsModule extends Module {
  @override
  void binds(Injector i) => VehiclesCommonsModuleBinds.binds(i);
}
