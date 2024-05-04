import 'package:common_deps/common_deps.dart';

part 'vehicle.freezed.dart';

@freezedNoHelpers
sealed class Vehicle with _$Vehicle {
  const factory Vehicle({
    required String id,
    required String name,
    required String plate,
  }) = _Vehicle;
}
