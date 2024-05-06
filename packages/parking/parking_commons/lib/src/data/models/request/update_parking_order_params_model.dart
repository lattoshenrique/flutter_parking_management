import 'package:common_deps/common_deps.dart';

import '../../../domain/entities/entities.dart';

part 'update_parking_order_params_model.freezed.dart';
part 'update_parking_order_params_model.g.dart';

@Freezed(
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
  toJson: true,
)
sealed class UpdateParkingOrderParamsModel
    with _$UpdateParkingOrderParamsModel {
  const UpdateParkingOrderParamsModel._();

  const factory UpdateParkingOrderParamsModel({
    required DateTime departureDate,
  }) = _UpdateParkingOrderParamsModel;

  factory UpdateParkingOrderParamsModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateParkingOrderParamsModelFromJson(json);

  factory UpdateParkingOrderParamsModel.fromEntity(
          UpdateParkingOrderParams entity) =>
      UpdateParkingOrderParamsModel(
        departureDate: entity.departureDate,
      );

  UpdateParkingOrderParams toEntity() => UpdateParkingOrderParams(
        departureDate: departureDate,
      );
}
