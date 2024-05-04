import 'package:common_deps/common_deps.dart';

import '../../../domain/entities/entities.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

const int kVehicleModelAdapterTypeId = 1;
const String kVehicleModelAdapterName = 'VehicleModelAdapter';

@Freezed(
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
  toJson: true,
)
sealed class VehicleModel with _$VehicleModel {
  const VehicleModel._();

  @HiveType(
    typeId: kVehicleModelAdapterTypeId,
    adapterName: kVehicleModelAdapterName,
  )
  const factory VehicleModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String plate,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  factory VehicleModel.fromEntity(Vehicle entity) => VehicleModel(
        id: entity.id,
        name: entity.name,
        plate: entity.plate,
      );

  Vehicle toEntity() => Vehicle(
        id: id,
        name: name,
        plate: plate,
      );
}
