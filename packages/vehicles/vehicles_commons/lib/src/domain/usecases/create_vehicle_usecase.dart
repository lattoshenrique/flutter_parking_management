import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';
import '../validations/failures/failures.dart';

abstract class ICreateVehicleUsecase {
  Future<Either<VehicleFailure, Vehicle>> call(VehicleParams params);
}

class CreateVehicleUsecase implements ICreateVehicleUsecase {
  final IVehicleRepository _repository;

  CreateVehicleUsecase(this._repository);

  @override
  Future<Either<VehicleFailure, Vehicle>> call(VehicleParams params) =>
      _repository.create(params);
}
