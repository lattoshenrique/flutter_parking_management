import 'package:common_deps/common_deps.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../../domain/entities/entities.dart';

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
    required String parkingId,
    required VehicleModel vehicle,
  }) = _CreateParkingOrderParamsModel;

  factory CreateParkingOrderParamsModel.fromJson(Map<String, dynamic> json) =>
      _$CreateParkingOrderParamsModelFromJson(json);

  factory CreateParkingOrderParamsModel.fromEntity(
    CreateParkingOrderParams entity,
  ) =>
      CreateParkingOrderParamsModel(
        parkingId: entity.parkingId,
        vehicle: VehicleModel.fromEntity(entity.vehicle),
      );

  CreateParkingOrderParams toEntity() => CreateParkingOrderParams(
        parkingId: parkingId,
        vehicle: vehicle.toEntity(),
      );
}
