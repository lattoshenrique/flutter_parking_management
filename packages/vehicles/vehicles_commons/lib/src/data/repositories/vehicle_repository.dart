import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';

import '../../domain/entities/vehicle.dart';
import '../../domain/entities/vehicle_params.dart';

import '../../domain/repositories/repositories.dart';
import '../../domain/validations/failures/vehicle_failure.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class VehicleRepository implements IVehicleRepository {
  final IVehicleLocalDataSource _localDataSource;

  VehicleRepository(this._localDataSource);

  final _log = Logger();

  @override
  Future<Either<VehicleFailure, Vehicle>> create(VehicleParams params) async {
    try {
      final list = await _localDataSource.getAll();

      if (list.any((e) => e.plate == params.plate)) {
        return const Left(VehicleFailure.plateExists());
      }

      final newVehicle =
          await _localDataSource.create(VehicleParamsModel.fromEntity(params));
      return Right(newVehicle.toEntity());
    } on StorageException catch (_) {
      return const Left(VehicleFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Create Vehicle',
        error: e,
        stackTrace: s,
      );
      return const Left(VehicleFailure.unexpected());
    }
  }

  @override
  Future<Either<VehicleFailure, Unit>> delete(String id) async {
    try {
      await _localDataSource.delete(id);
      return const Right(unit);
    } on StorageException catch (_) {
      return const Left(VehicleFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Delete Vehicle',
        error: e,
        stackTrace: s,
      );
      return const Left(VehicleFailure.unexpected());
    }
  }

  @override
  Future<Either<VehicleFailure, List<Vehicle>>> getAll() async {
    try {
      final list = await _localDataSource.getAll();
      return Right(list.map((e) => e.toEntity()).toList());
    } on StorageException catch (_) {
      return const Left(VehicleFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Get all Vehicles',
        error: e,
        stackTrace: s,
      );
      return const Left(VehicleFailure.unexpected());
    }
  }

  @override
  Future<Either<VehicleFailure, Vehicle>> update({
    required String id,
    required VehicleParams params,
  }) async {
    try {
      final list = await _localDataSource.getAll();

      if (list.any((e) => e.plate == params.plate)) {
        return const Left(VehicleFailure.plateExists());
      }

      final updatedVehicle = await _localDataSource.update(
        id: id,
        params: VehicleParamsModel.fromEntity(params),
      );
      return Right(updatedVehicle.toEntity());
    } on StorageException catch (_) {
      return const Left(VehicleFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Update Vehicle',
        error: e,
        stackTrace: s,
      );
      return const Left(VehicleFailure.unexpected());
    }
  }
}
