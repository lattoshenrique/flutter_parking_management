import 'package:common_deps/common_deps.dart';

part 'parking.freezed.dart';

@freezedNoHelpers
sealed class Parking with _$Parking {
  const factory Parking({
    required String id,
    required String name,
  }) = _Parking;
}
