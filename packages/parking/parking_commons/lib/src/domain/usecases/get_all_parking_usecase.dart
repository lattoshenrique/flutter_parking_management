import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';
import '../validations/validations.dart';

abstract class IGetAllParkingUsecase {
  Future<Either<ParkingFailure, List<Parking>>> call();
}

class GetAllParkingUsecase implements IGetAllParkingUsecase {
  final IParkingRepository _parkingRepository;

  GetAllParkingUsecase(this._parkingRepository);

  @override
  Future<Either<ParkingFailure, List<Parking>>> call() =>
      _parkingRepository.getAll();
}
