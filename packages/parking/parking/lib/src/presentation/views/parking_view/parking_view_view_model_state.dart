import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';

part 'parking_view_view_model_state.freezed.dart';

@freezedNoHelpers
sealed class ParkingViewViewModelState extends ViewModelState
    with _$ParkingViewViewModelState {
  const factory ParkingViewViewModelState.idle() =
      IdleParkingViewViewModelState;

  const factory ParkingViewViewModelState.loading() =
      LoadingParkingViewViewModelState;

  const factory ParkingViewViewModelState.error() =
      ErrorParkingViewViewModelState;
}
