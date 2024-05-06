import 'package:common_deps/common_deps.dart';

import '../../../domain/entities/entities.dart';

part 'create_parking_params_model.freezed.dart';
part 'create_parking_params_model.g.dart';

@freezedNoHelpers
sealed class CreateParkingParamsModel with _$CreateParkingParamsModel {
  const CreateParkingParamsModel._();

  const factory CreateParkingParamsModel({
    required String name,
  }) = _CreateParkingParamsModel;

  factory CreateParkingParamsModel.fromJson(Map<String, dynamic> json) =>
      _$CreateParkingParamsModelFromJson(json);

  factory CreateParkingParamsModel.fromEntity(CreateParkingParams entity) =>
      CreateParkingParamsModel(
        name: entity.name,
      );

  CreateParkingParams toEntity() => CreateParkingParams(
        name: name,
      );
}
