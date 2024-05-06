import 'package:common_deps/common_deps.dart';

part 'vehicle_failure.freezed.dart';

@freezedNoHelpers
sealed class VehicleFailure with _$VehicleFailure {
  const factory VehicleFailure.unexpected([String? message]) =
      VehicleUnexpectedFailure;
  const factory VehicleFailure.plateExists([String? message]) =
      VehiclePlateExistsFailure;
  const factory VehicleFailure.storage([String? message]) =
      VehicleStorageFailure;
}
