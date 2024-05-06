import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../../domain/entities/entities.dart';

part 'parking_order_model.freezed.dart';
part 'parking_order_model.g.dart';

const int kParkingOrderModelAdapterTypeId = 4;
const String kParkingOrderModelAdapterName = 'ParkingOrderModelAdapter';

@freezedNoHelpers
sealed class ParkingOrderModel with _$ParkingOrderModel {
  const ParkingOrderModel._();

  @HiveType(
    typeId: kParkingOrderModelAdapterTypeId,
    adapterName: kParkingOrderModelAdapterName,
  )
  const factory ParkingOrderModel({
    @HiveField(0) required String id,
    @HiveField(1) required VehicleModel vehicle,
    @HiveField(2) required DateTime entryDate,
    @HiveField(3) DateTime? departureDate,
  }) = _ParkingOrderModel;

  factory ParkingOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingOrderModelFromJson(json);

  factory ParkingOrderModel.fromEntity(ParkingOrder entity) =>
      ParkingOrderModel(
        id: entity.id,
        vehicle: VehicleModel.fromEntity(entity.vehicle),
        entryDate: entity.entryDate,
        departureDate: entity.departureDate,
      );

  ParkingOrder toEntity() => ParkingOrder(
        id: id,
        vehicle: vehicle.toEntity(),
        entryDate: entryDate,
        departureDate: departureDate,
      );
}
