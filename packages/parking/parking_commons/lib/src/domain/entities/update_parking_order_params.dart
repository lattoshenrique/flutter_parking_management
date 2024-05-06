import 'package:common_deps/common_deps.dart';

part 'update_parking_order_params.freezed.dart';

@freezedNoHelpers
sealed class UpdateParkingOrderParams with _$UpdateParkingOrderParams {
  const factory UpdateParkingOrderParams({
    required DateTime departureDate,
  }) = _UpdateParkingOrderParams;
}
