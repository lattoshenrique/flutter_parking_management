import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

part 'vehicle_list_view_model_state.dart';
part 'vehicle_list_view_model.freezed.dart';

class VehicleListViewModel extends ViewModel<VehicleListViewModelState> {
  final IGetAllVehiclesUsecase _getAllVehiclesUsecase;
  final IDeleteVehicleUsecase _deleteVehicleUsecase;

  VehicleListViewModel({
    required IGetAllVehiclesUsecase getAllVehiclesUsecase,
    required IDeleteVehicleUsecase deleteVehicleUsecase,
  })  : _getAllVehiclesUsecase = getAllVehiclesUsecase,
        _deleteVehicleUsecase = deleteVehicleUsecase,
        super(const VehicleListViewModelState.loading());

  @override
  void initViewModel() {
    super.initViewModel();
    loadPage();
  }

  void loadPage() async {
    final allVehiclesRes = await _getAllVehiclesUsecase();

    allVehiclesRes.fold(
      (error) {
        switch (error) {
          case VehiclePlateExistsFailure():
            emit(
              const VehicleListViewModelState.loadingAllError(
                'Placa já existe na base de dados!',
              ),
            );
            break;
          default:
            emit(
              const VehicleListViewModelState.loadingAllError(
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

  void deleteVehicle({required Vehicle vehicle, required int index}) async {
    if (state case LoadedVehicleListViewModelState(:final vehicles)) {
      emit(
        VehicleListViewModelState.loadingDelete(
          vehicles: vehicles,
          index: index,
        ),
      );

      final deleteRes = await _deleteVehicleUsecase(vehicle.id);

      deleteRes.fold(
        (error) {
          emit(
            VehicleListViewModelState.loadingDeleteError(
              vehicles: vehicles,
              message: 'Ocorreu um erro ao deletar o veículo. Tente novamente.',
            ),
          );
        },
        (success) {
          final newList = List<Vehicle>.from(vehicles)..remove(vehicle);
          emit(VehicleListViewModelState.loaded(vehicles: newList));
        },
      );
    }
  }
}
