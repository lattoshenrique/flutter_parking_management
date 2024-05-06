import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../repositories/repositories.dart';
import '../validations/validations.dart';

abstract class IGetCurrentVehiclesParkingUsecase {
  Future<Either<ParkingFailure, List<Vehicle>>> call();
}

class GetCurrentVehiclesParkingUsecase
    implements IGetCurrentVehiclesParkingUsecase {
  final IParkingRepository _parkingRepository;

  GetCurrentVehiclesParkingUsecase(this._parkingRepository);

  @override
  Future<Either<ParkingFailure, List<Vehicle>>> call() =>
      _parkingRepository.getCurrentVehiclesParking();
}
