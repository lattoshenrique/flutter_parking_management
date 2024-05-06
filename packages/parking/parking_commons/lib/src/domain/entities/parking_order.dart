import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

part 'parking_order.freezed.dart';

@freezedNoHelpers
sealed class ParkingOrder with _$ParkingOrder {
  const factory ParkingOrder({
    required String id,
    required Vehicle vehicle,
    required DateTime entryDate,
    DateTime? departureDate,
  }) = _ParkingOrder;
}
