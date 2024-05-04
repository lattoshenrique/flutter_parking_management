import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import 'presentation/presentation.dart';

part 'vehicles_module_routing.dart';
part 'vehicles_module_binds.dart';

class VehiclesModule extends Module {
  @override
  List<Module> get imports => [
        VehiclesCommonsModule(),
      ];

  @override
  void routes(RouteManager r) => VehiclesModuleRouting.routes(r);

  @override
  void binds(Injector i) => VehiclesModuleBinds.binds(i);
}
