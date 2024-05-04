import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../validations/validations.dart';

abstract class IVehicleRepository {
  Future<Either<VehicleFailure, List<Vehicle>>> getAll();

  Future<Either<VehicleFailure, Vehicle>> create(VehicleParams params);

  Future<Either<VehicleFailure, Vehicle>> update({
    required String id,
    required VehicleParams params,
  });

  Future<Either<VehicleFailure, Unit>> delete(String id);
}
