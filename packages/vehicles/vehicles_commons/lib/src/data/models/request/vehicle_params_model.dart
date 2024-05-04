import 'package:common_deps/common_deps.dart';

import '../../../domain/entities/entities.dart';

part 'vehicle_params_model.freezed.dart';
part 'vehicle_params_model.g.dart';

@Freezed(
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
  toJson: true,
)
sealed class VehicleParamsModel with _$VehicleParamsModel {
  const VehicleParamsModel._();

  const factory VehicleParamsModel({
    required String name,
    required String plate,
  }) = _VehicleParamsModel;

  factory VehicleParamsModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleParamsModelFromJson(json);

  factory VehicleParamsModel.fromEntity(VehicleParams entity) =>
      VehicleParamsModel(
        name: entity.name,
        plate: entity.plate,
      );

  VehicleParams toEntity() => VehicleParams(
        name: name,
        plate: plate,
      );
}
