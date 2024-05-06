import 'package:common_deps/common_deps.dart';

import '../parking_commons.dart';
import 'data/data.dart';
import 'parking_commons_module_binds.dart';

class ParkingCommonsModule extends Module {
  ParkingCommonsModule() {
    _registerStorageAdapters();
  }

  @override
  void binds(Injector i) => ParkingCommonsModuleBinds.binds(i);

  void _registerStorageAdapters() {
    final hive = Hive;

    if (!hive.isAdapterRegistered(kParkingModelAdapterTypeId)) {
      hive.registerAdapter(ParkingModelAdapter());
    }
    if (!hive.isAdapterRegistered(kParkingOrderModelAdapterTypeId)) {
      hive.registerAdapter(ParkingOrderModelAdapter());
    }
  }
}
