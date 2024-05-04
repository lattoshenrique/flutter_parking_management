import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';

import 'data/datasources/datasources.dart';
import 'data/models/models.dart';
import 'data/repositories/repositories.dart';
import 'domain/repositories/repositories.dart';
import 'domain/usecases/usecases.dart';

const String _kHiveVehiclesBoxKey = '@vehicles';

abstract class VehiclesCommonsModuleBinds {
  static void binds(Injector i) {
    _infra(i);
    _datasources(i);
    _repositories(i);
    _usecases(i);
  }

  static void _infra(Injector i) {
    i.add<IStorageClient<List<VehicleModel>>>(
      () => HiveStorageAdapter<List<VehicleModel>>(_kHiveVehiclesBoxKey),
    );
  }

  static void _datasources(Injector i) {
    i.add<IVehicleLocalDataSource>(() => VehicleLocalDataSource(i.get()));
  }

  static void _repositories(Injector i) {
    i.add<IVehicleRepository>(() => VehicleRepository(i.get()));
  }

  static void _usecases(Injector i) {
    i.add<IGetAllVehiclesUsecase>(() => GetAllVehiclesUsecase(i.get()));
    i.add<ICreateVehicleUsecase>(() => CreateVehicleUsecase(i.get()));
    i.add<IDeleteVehicleUsecase>(() => DeleteVehicleUsecase(i.get()));
    i.add<IUpdateVehicleUsecase>(() => CreateVehicleUsecase(i.get()));
  }
}
