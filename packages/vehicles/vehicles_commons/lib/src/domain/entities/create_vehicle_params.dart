import 'package:common_deps/common_deps.dart';

part 'create_vehicle_params.freezed.dart';

@freezedNoHelpers
sealed class CreateVehicleParams with _$CreateVehicleParams {
  const factory CreateVehicleParams({
    required String name,
    required String plate,
  }) = _CreateVehicleParams;
}
