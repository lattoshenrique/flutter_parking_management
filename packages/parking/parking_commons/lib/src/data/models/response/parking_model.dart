import 'package:common_deps/common_deps.dart';

import '../../../domain/entities/entities.dart';

part 'parking_model.freezed.dart';
part 'parking_model.g.dart';

const int kParkingModelAdapterTypeId = 2;
const String kParkingModelAdapterName = 'ParkingModelAdapter';

@freezedNoHelpers
sealed class ParkingModel with _$ParkingModel {
  const ParkingModel._();

  @HiveType(
    typeId: kParkingModelAdapterTypeId,
    adapterName: kParkingModelAdapterName,
  )
  const factory ParkingModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
  }) = _ParkingModel;

  factory ParkingModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingModelFromJson(json);

  factory ParkingModel.fromEntity(Parking entity) => ParkingModel(
        id: entity.id,
        name: entity.name,
      );

  Parking toEntity() => Parking(
        id: id,
        name: name,
      );
}
