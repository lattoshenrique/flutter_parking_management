import 'package:common_deps/common_deps.dart';

part 'update_vehicle_params.freezed.dart';

@freezedNoHelpers
sealed class UpdateVehicleParams with _$UpdateVehicleParams {
  const factory UpdateVehicleParams({
    required String name,
  }) = _UpdateVehicleParams;
}
