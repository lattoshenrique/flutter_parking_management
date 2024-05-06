import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';
import '../validations/validations.dart';

abstract class ICreateOrderUsecase {
  Future<Either<ParkingFailure, ParkingOrder>> call(
    CreateParkingOrderParams params,
  );
}

class CreateOrderUsecase implements ICreateOrderUsecase {
  final IParkingRepository _parkingRepository;

  CreateOrderUsecase(this._parkingRepository);

  @override
  Future<Either<ParkingFailure, ParkingOrder>> call(
    CreateParkingOrderParams params,
  ) =>
      _parkingRepository.createOrder(params);
}
