import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../validations/failures/failures.dart';

abstract class ParkingRepository {
  Future<Either<ParkingFailure, Unit>> create(Parking parking);

  Future<Either<ParkingFailure, List<Parking>>> getAll();

  Future<Either<ParkingFailure, List<ParkingOrder>>> getAllOrders();

  Future<Either<ParkingFailure, List<ParkingOrder>>> getOrdersByParkingId(
    String parkingId,
  );

  Future<Either<ParkingFailure, ParkingOrder>> createOrder(
    CreateParkingOrderParams params,
  );

  Future<Either<ParkingFailure, ParkingOrder>> updateOrder({
    required String id,
    required UpdateParkingOrderParams params,
  });
}
