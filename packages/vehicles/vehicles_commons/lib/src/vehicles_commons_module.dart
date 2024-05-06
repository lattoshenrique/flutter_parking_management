import 'package:common_deps/common_deps.dart';

import 'data/data.dart';
import 'vehicles_commons_module_binds.dart';

class VehiclesCommonsModule extends Module {
  VehiclesCommonsModule() {
    _registerStorageAdapters();
  }

  @override
  void binds(Injector i) => VehiclesCommonsModuleBinds.binds(i);

  void _registerStorageAdapters() {
    final hive = Hive;

    if (!hive.isAdapterRegistered(kVehicleModelAdapterTypeId)) {
      hive.registerAdapter(VehicleModelAdapter());
    }
  }
}
