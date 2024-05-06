import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';
import '../validations/validations.dart';

abstract class ICreateParkingUsecase {
  Future<Either<ParkingFailure, Parking>> call(CreateParkingParams params);
}

class CreateParkingUsecase implements ICreateParkingUsecase {
  final IParkingRepository _parkingRepository;

  CreateParkingUsecase(this._parkingRepository);

  @override
  Future<Either<ParkingFailure, Parking>> call(CreateParkingParams params) =>
      _parkingRepository.create(params);
}
