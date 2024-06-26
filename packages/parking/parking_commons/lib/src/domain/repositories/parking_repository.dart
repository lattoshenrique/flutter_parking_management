import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../entities/entities.dart';
import '../validations/failures/failures.dart';

abstract class IParkingRepository {
  Future<Either<ParkingFailure, Parking>> create(CreateParkingParams params);

  Future<Either<ParkingFailure, List<Parking>>> getAll();

  Future<Either<ParkingFailure, ParkingOrder>> createOrder(
    CreateParkingOrderParams params,
  );

  Future<Either<ParkingFailure, ParkingOrder>> updateOrder({
    required String parkingId,
    required String orderId,
    required UpdateParkingOrderParams params,
  });

  Future<Either<ParkingFailure, List<Vehicle>>> getCurrentVehiclesParking();
}
