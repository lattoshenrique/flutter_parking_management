import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

part 'vehicle_list_view_model_state.dart';
part 'vehicle_list_view_model.freezed.dart';

class VehicleListViewModel extends ViewModel<VehicleListViewModelState> {
  final IGetAllVehiclesUsecase _getAllVehiclesUsecase;

  VehicleListViewModel({
    required IGetAllVehiclesUsecase getAllVehiclesUsecase,
  })  : _getAllVehiclesUsecase = getAllVehiclesUsecase,
        super(const VehicleListViewModelState.loading());

  @override
  void initViewModel() {
    super.initViewModel();
    loadPage();
  }

  void loadPage() async {
    emit(const VehicleListViewModelState.loading());

    final allVehiclesRes = await _getAllVehiclesUsecase();

    allVehiclesRes.fold(
      (error) {
        switch (error) {
          case VehiclePlateExistsFailure():
            emit(
              const VehicleListViewModelState.error(
                'Placa já existe na base de dados!',
              ),
            );
            break;
          default:
            emit(
              const VehicleListViewModelState.error(
                'Ocorreu um erro ao obter a lista de veículos. Tente novamente.',
              ),
            );
            break;
        }
      },
      (vehicles) {
        emit(VehicleListViewModelState.loaded(vehicles: vehicles));
      },
    );
  }
}
