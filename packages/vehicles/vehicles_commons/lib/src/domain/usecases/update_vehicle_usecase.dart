import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';
import '../validations/failures/failures.dart';

abstract class IUpdateVehicleUsecase {
  Future<Either<VehicleFailure, Vehicle>> call({
    required String id,
    required VehicleParams params,
  });
}

class UpdateVehicleUsecase implements IUpdateVehicleUsecase {
  final IVehicleRepository _repository;

  UpdateVehicleUsecase(this._repository);

  @override
  Future<Either<VehicleFailure, Vehicle>> call({
    required String id,
    required VehicleParams params,
  }) =>
      _repository.update(id: id, params: params);
}
