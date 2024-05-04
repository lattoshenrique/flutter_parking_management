import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';
import '../validations/failures/failures.dart';

abstract class IGetAllVehiclesUsecase {
  Future<Either<VehicleFailure, List<Vehicle>>> call();
}

class GetAllVehiclesUsecase implements IGetAllVehiclesUsecase {
  final IVehicleRepository _repository;

  GetAllVehiclesUsecase(this._repository);

  @override
  Future<Either<VehicleFailure, List<Vehicle>>> call() => _repository.getAll();
}
