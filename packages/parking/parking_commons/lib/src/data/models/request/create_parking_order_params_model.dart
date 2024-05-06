import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../../domain/entities/entities.dart';
import '../response/response.dart';

part 'create_parking_order_params_model.freezed.dart';
part 'create_parking_order_params_model.g.dart';

@Freezed(
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
  toJson: true,
)
sealed class CreateParkingOrderParamsModel
    with _$CreateParkingOrderParamsModel {
  const CreateParkingOrderParamsModel._();

  const factory CreateParkingOrderParamsModel({
    required ParkingModel parking,
    required VehicleModel vehicle,
  }) = _CreateParkingOrderParamsModel;

  factory CreateParkingOrderParamsModel.fromJson(Map<String, dynamic> json) =>
      _$CreateParkingOrderParamsModelFromJson(json);

  factory CreateParkingOrderParamsModel.fromEntity(
          CreateParkingOrderParams entity) =>
      CreateParkingOrderParamsModel(
        parking: ParkingModel.fromEntity(entity.parking),
        vehicle: VehicleModel.fromEntity(entity.vehicle),
      );

  CreateParkingOrderParams toEntity() => CreateParkingOrderParams(
        parking: parking.toEntity(),
        vehicle: vehicle.toEntity(),
      );
}
