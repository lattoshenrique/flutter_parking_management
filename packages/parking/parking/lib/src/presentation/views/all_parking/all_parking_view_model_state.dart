import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:parking_commons/parking_commons.dart';

part 'all_parking_view_model_state.freezed.dart';

@freezedNoHelpers
sealed class AllParkingViewModelState extends ViewModelState
    with _$AllParkingViewModelState {
  const factory AllParkingViewModelState.loading() =
      LoadingAllParkingViewModelState;

  const factory AllParkingViewModelState.loaded({
    @Default([]) List<Parking> parking,
  }) = LoadedAllParkingViewModelState;

  const factory AllParkingViewModelState.error([String? message]) =
      ErrorAllParkingViewModelState;
}
