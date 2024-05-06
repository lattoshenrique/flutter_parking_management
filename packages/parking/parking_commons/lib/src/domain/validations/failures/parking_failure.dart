import 'package:common_deps/common_deps.dart';

part 'parking_failure.freezed.dart';

@freezedNoHelpers
sealed class ParkingFailure with _$ParkingFailure {
  const factory ParkingFailure.unexpected([String? message]) =
      ParkingUnexpectedFailure;
  const factory ParkingFailure.plateExists([String? message]) =
      ParkingPlateExistsFailure;
  const factory ParkingFailure.storage([String? message]) =
      ParkingStorageFailure;
}
