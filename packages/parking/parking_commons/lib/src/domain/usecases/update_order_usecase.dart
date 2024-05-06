import 'package:common_deps/common_deps.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';
import '../validations/validations.dart';

abstract class IUpdateOrderUsecase {
  Future<Either<ParkingFailure, ParkingOrder>> call({
    required String parkingId,
    required String orderId,
    required UpdateParkingOrderParams params,
  });
}

class UpdateOrderUsecase implements IUpdateOrderUsecase {
  final IParkingRepository _parkingRepository;

  UpdateOrderUsecase(this._parkingRepository);

  @override
  Future<Either<ParkingFailure, ParkingOrder>> call({
    required String parkingId,
    required String orderId,
    required UpdateParkingOrderParams params,
  }) =>
      _parkingRepository.updateOrder(
        parkingId: parkingId,
        orderId: orderId,
        params: params,
      );
}
