import 'package:common_deps/common_deps.dart';

import '../../../domain/entities/entities.dart';

part 'update_vehicle_params_model.freezed.dart';
part 'update_vehicle_params_model.g.dart';

@Freezed(
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
  toJson: true,
)
sealed class UpdateVehicleParamsModel with _$UpdateVehicleParamsModel {
  const UpdateVehicleParamsModel._();

  const factory UpdateVehicleParamsModel({
    required String name,
  }) = _UpdateVehicleParamsModel;

  factory UpdateVehicleParamsModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateVehicleParamsModelFromJson(json);

  factory UpdateVehicleParamsModel.fromEntity(UpdateVehicleParams entity) =>
      UpdateVehicleParamsModel(
        name: entity.name,
      );

  UpdateVehicleParams toEntity() => UpdateVehicleParams(
        name: name,
      );
}
