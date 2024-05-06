import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';

import 'data/datasources/datasources.dart';
import 'data/models/models.dart';
import 'data/repositories/repositories.dart';
import 'domain/repositories/repositories.dart';
import 'domain/usecases/usecases.dart';

const String _kHiveParkingBoxKey = '@parking';

abstract class ParkingCommonsModuleBinds {
  static void binds(Injector i) {
    _infra(i);
    _datasources(i);
    _repositories(i);
    _usecases(i);
  }

  static void _infra(Injector i) {
    i.addLazySingleton<IStorageClient<List<ParkingModel>>>(
      () => HiveStorageAdapter<List<ParkingModel>>(_kHiveParkingBoxKey),
    );
  }

  static void _datasources(Injector i) {
    i.addLazySingleton<IParkingLocalDataSource>(
      () => ParkingLocalDataSource(i.get()),
    );
  }

  static void _repositories(Injector i) {
    i.addLazySingleton<IParkingRepository>(() => ParkingRepository(i.get()));
  }

  static void _usecases(Injector i) {
    i.addLazySingleton<ICreateOrderUsecase>(
      () => CreateOrderUsecase(i.get()),
    );
    i.addLazySingleton<ICreateParkingUsecase>(
      () => CreateParkingUsecase(i.get()),
    );
    i.addLazySingleton<IGetAllParkingUsecase>(
      () => GetAllParkingUsecase(i.get()),
    );
    i.addLazySingleton<IGetCurrentVehiclesParkingUsecase>(
      () => GetCurrentVehiclesParkingUsecase(i.get()),
    );
    i.addLazySingleton<IUpdateOrderUsecase>(
      () => UpdateOrderUsecase(i.get()),
    );
  }
}
