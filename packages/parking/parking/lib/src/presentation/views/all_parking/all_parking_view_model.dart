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

    List<Parking> parking = parkingRes.toRight();

    if (parking.isEmpty) {
      final mockParking = _mockParking();
      final List<Parking> newParkingList = [];
      for (final name in mockParking) {
        final res =
            await _createParkingUsecase(CreateParkingParams(name: name));
        if (res.isLeft()) {
          emit(const AllParkingViewModelState.error());
          return;
        }
        newParkingList.add(res.toRight());
      }
      parking = newParkingList;
    }

    emit(AllParkingViewModelState.loaded(parking: parking));
  }

  List<String> _mockParking() {
    final List<String> result = [];
    final List<String> letters = ['A', 'B', 'C', 'D', 'E'];
    const int vacanciesPerLetter = 4;

    for (final letter in letters) {
      for (int i = 1; i <= vacanciesPerLetter; i++) {
        result.add('$letter$i');
      }
    }

    return result;
  }
}
