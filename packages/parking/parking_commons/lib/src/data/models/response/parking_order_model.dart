import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../../domain/entities/entities.dart';
import 'parking_model.dart';

part 'parking_order_model.freezed.dart';
part 'parking_order_model.g.dart';

const int kParkingOrderModelAdapterTypeId = 3;
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
    @HiveField(1) required ParkingModel parking,
    @HiveField(2) required VehicleModel vehicle,
    @HiveField(3) required DateTime entryDate,
    @HiveField(4) DateTime? departureDate,
  }) = _ParkingOrderModel;

  factory ParkingOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingOrderModelFromJson(json);

  factory ParkingOrderModel.fromEntity(ParkingOrder entity) =>
      ParkingOrderModel(
        id: entity.id,
        parking: ParkingModel.fromEntity(entity.parking),
        vehicle: VehicleModel.fromEntity(entity.vehicle),
        entryDate: entity.entryDate,
        departureDate: entity.departureDate,
      );

  ParkingOrder toEntity() => ParkingOrder(
        id: id,
        parking: parking.toEntity(),
        vehicle: vehicle.toEntity(),
        entryDate: entryDate,
        departureDate: departureDate,
      );
}
