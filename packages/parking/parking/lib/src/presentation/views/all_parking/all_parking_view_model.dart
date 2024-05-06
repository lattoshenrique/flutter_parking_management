import 'package:core/core.dart';
import 'package:parking_commons/parking_commons.dart';

import 'all_parking_view_model_state.dart';

class AllParkingViewModel extends ViewModel<AllParkingViewModelState> {
  final IGetAllParkingUsecase _getAllParkingUsecase;
  final ICreateParkingUsecase _createParkingUsecase;

  AllParkingViewModel(
    this._getAllParkingUsecase,
    this._createParkingUsecase,
  ) : super(const AllParkingViewModelState.loading());

  @override
  void initViewModel() {
    super.initViewModel();
    loadPage();
  }

  void loadPage() async {
    emit(const AllParkingViewModelState.loading());

    final parkingRes = await _getAllParkingUsecase();

    if (parkingRes.isLeft()) {
      emit(const AllParkingViewModelState.error());
      return;
    }

    final List<Parking> parking = List<Parking>.from(parkingRes.toRight());

    if (parking.isEmpty) {
      for (final name in _mockParking()) {
        final res =
            await _createParkingUsecase(CreateParkingParams(name: name));
        if (res.isLeft()) {
          emit(const AllParkingViewModelState.error());
          return;
        }
        parking.add(res.toRight());
      }
    }

    emit(AllParkingViewModelState.loaded(parking: parking));
  }

  List<String> _mockParking() {
    final List<String> result = [];
    final List<String> letters = ['A', 'B', 'C', 'D', 'E'];
    const int vacanciesPerLetter = 5;

    for (var letra in letters) {
      for (int i = 1; i <= vacanciesPerLetter; i++) {
        result.add('$letra$i');
      }
    }

    return result;
  }
}
