import 'package:common_deps/common_deps.dart';

import '../repositories/repositories.dart';
import '../validations/failures/failures.dart';

abstract class IDeleteVehicleUsecase {
  Future<Either<VehicleFailure, Unit>> call(String id);
}

class DeleteVehicleUsecase implements IDeleteVehicleUsecase {
  final IVehicleRepository _repository;

  DeleteVehicleUsecase(this._repository);

  @override
  Future<Either<VehicleFailure, Unit>> call(String id) =>
      _repository.delete(id);
}
