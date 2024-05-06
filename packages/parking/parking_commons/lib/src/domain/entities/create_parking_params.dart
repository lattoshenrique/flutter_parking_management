import 'package:common_deps/common_deps.dart';

part 'create_parking_params.freezed.dart';

@freezedNoHelpers
sealed class CreateParkingParams with _$CreateParkingParams {
  const factory CreateParkingParams({
    required String name,
  }) = _CreateParkingParams;
}
