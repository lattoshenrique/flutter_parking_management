import 'package:common_deps/common_deps.dart';

import 'parking_order.dart';

part 'parking.freezed.dart';

@freezedNoHelpers
sealed class Parking with _$Parking {
  const factory Parking({
    required String id,
    required String name,
    @Default([]) List<ParkingOrder> orders,
  }) = _Parking;
}
