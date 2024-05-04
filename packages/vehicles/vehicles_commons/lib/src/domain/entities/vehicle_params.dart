import 'package:common_deps/common_deps.dart';

part 'vehicle_params.freezed.dart';

@freezedNoHelpers
sealed class VehicleParams with _$VehicleParams {
  const factory VehicleParams({
    required String name,
    required String plate,
  }) = _VehicleParams;
}
