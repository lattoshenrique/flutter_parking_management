import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

part 'create_parking_order_params.freezed.dart';

@freezedNoHelpers
sealed class CreateParkingOrderParams with _$CreateParkingOrderParams {
  const factory CreateParkingOrderParams({
    required String parkingId,
    required Vehicle vehicle,
  }) = _CreateParkingOrderParams;
}
