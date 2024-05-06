import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../domain/entities/create_parking_order_params.dart';
import '../../domain/entities/create_parking_params.dart';
import '../../domain/entities/parking.dart';
import '../../domain/entities/parking_order.dart';
import '../../domain/entities/update_parking_order_params.dart';

import '../../domain/repositories/repositories.dart';
import '../../domain/validations/failures/parking_failure.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class ParkingRepository implements IParkingRepository {
  final IParkingLocalDataSource _localDataSource;

  ParkingRepository(this._localDataSource);

  final _log = Logger();

  @override
  Future<Either<ParkingFailure, Parking>> create(
    CreateParkingParams params,
  ) async {
    try {
      final res = await _localDataSource
          .create(CreateParkingParamsModel.fromEntity(params));
      return Right(res.toEntity());
    } on StorageException catch (_) {
      return const Left(ParkingFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Create Parking',
        error: e,
        stackTrace: s,
      );
      return const Left(ParkingFailure.unexpected());
    }
  }

  @override
  Future<Either<ParkingFailure, ParkingOrder>> createOrder(
    CreateParkingOrderParams params,
  ) async {
    try {
      final res = await _localDataSource
          .createOrder(CreateParkingOrderParamsModel.fromEntity(params));
      return Right(res.toEntity());
    } on StorageException catch (_) {
      return const Left(ParkingFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Create Order',
        error: e,
        stackTrace: s,
      );
      return const Left(ParkingFailure.unexpected());
    }
  }

  @override
  Future<Either<ParkingFailure, List<Parking>>> getAll() async {
    try {
      final res = await _localDataSource.getAll();
      return Right(res.map((e) => e.toEntity()).toList());
    } on StorageException catch (_) {
      return const Left(ParkingFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Get All',
        error: e,
        stackTrace: s,
      );
      return const Left(ParkingFailure.unexpected());
    }
  }

  @override
  Future<Either<ParkingFailure, ParkingOrder>> updateOrder({
    required String parkingId,
    required String orderId,
    required UpdateParkingOrderParams params,
  }) async {
    try {
      final res = await _localDataSource.updateOrder(
        parkingId: parkingId,
        orderId: orderId,
        params: UpdateParkingOrderParamsModel.fromEntity(params),
      );
      return Right(res.toEntity());
    } on StorageException catch (_) {
      return const Left(ParkingFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Update Order',
        error: e,
        stackTrace: s,
      );
      return const Left(ParkingFailure.unexpected());
    }
  }

  @override
  Future<Either<ParkingFailure, List<Vehicle>>>
      getCurrentVehiclesParking() async {
    try {
      if (_localDataSource.currentVehiclesParking.isNotEmpty) {
        return Right(
          _localDataSource.currentVehiclesParking
              .map((e) => e.toEntity())
              .toList(),
        );
      }
      await _localDataSource.getAll();
      return Right(
        _localDataSource.currentVehiclesParking
            .map((e) => e.toEntity())
            .toList(),
      );
    } on StorageException catch (_) {
      return const Left(ParkingFailure.storage());
    } on Exception catch (e, s) {
      _log.e(
        'Error on Get Current Vehicles Parking',
        error: e,
        stackTrace: s,
      );
      return const Left(ParkingFailure.unexpected());
    }
  }
}
