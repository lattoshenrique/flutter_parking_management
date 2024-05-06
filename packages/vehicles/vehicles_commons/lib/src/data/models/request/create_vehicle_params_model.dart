import 'package:common_deps/common_deps.dart';

import '../../../domain/entities/entities.dart';

part 'create_vehicle_params_model.freezed.dart';
part 'create_vehicle_params_model.g.dart';

@Freezed(
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
  toJson: true,
)
sealed class CreateVehicleParamsModel with _$CreateVehicleParamsModel {
  const CreateVehicleParamsModel._();

  const factory CreateVehicleParamsModel({
    required String name,
    required String plate,
  }) = _CreateVehicleParamsModel;

  factory CreateVehicleParamsModel.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleParamsModelFromJson(json);

  factory CreateVehicleParamsModel.fromEntity(CreateVehicleParams entity) =>
      CreateVehicleParamsModel(
        name: entity.name,
        plate: entity.plate,
      );

  CreateVehicleParams toEntity() => CreateVehicleParams(
        name: name,
        plate: plate,
      );
}
