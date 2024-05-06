import 'package:common_deps/common_deps.dart';
import 'package:parking_commons/parking_commons.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import 'parking_module_routing.dart';
import 'presentation/presentation.dart';

part 'parking_module_binds.dart';

class ParkingModule extends Module {
  @override
  List<Module> get imports => [
        VehiclesCommonsModule(),
        ParkingCommonsModule(),
      ];

  @override
  void routes(RouteManager r) => ParkingModuleRouting.routes(r);

  @override
  void binds(Injector i) => ParkingModuleBinds.binds(i);
}
