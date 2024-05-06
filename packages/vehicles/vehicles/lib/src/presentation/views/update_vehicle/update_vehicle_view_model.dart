import 'package:core/core.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import 'update_vehicle_view_model_state.dart';

class UpdateVehicleViewModel extends ViewModel<UpdateVehicleViewModelState> {
  final IUpdateVehicleUsecase _updateVehicleUsecase;
  final ICreateVehicleUsecase _createVehicleUsecase;
  final IDeleteVehicleUsecase _deleteVehicleUsecase;

  UpdateVehicleViewModel(
    this._updateVehicleUsecase,
    this._deleteVehicleUsecase,
    this._createVehicleUsecase,
  ) : super(const UpdateVehicleViewModelState.idle());

  void create(CreateVehicleParams params) async {
    emit(const UpdateVehicleViewModelState.loading());

    final res = await _createVehicleUsecase(params);

    res.fold(
      (error) {
        String? message;
        if (error case VehiclePlateExistsFailure()) {
          message = 'A placa informada já está cadastrada na base de dados.';
        }
        emit(
          UpdateVehicleViewModelState.error(message),
        );
      },
      (_) {
        emit(const UpdateVehicleViewModelState.success());
      },
    );
  }

  void update({
    required String id,
    required UpdateVehicleParams params,
  }) async {
    emit(const UpdateVehicleViewModelState.loading());

    final res = await _updateVehicleUsecase(
      id: id,
      params: params,
    );

    res.fold(
      (error) {
        String? message;
        if (error case VehiclePlateExistsFailure()) {
          message = 'A placa informada já está cadastrada na base de dados.';
        }
        emit(
          UpdateVehicleViewModelState.error(message),
        );
      },
      (_) {
        emit(const UpdateVehicleViewModelState.success());
      },
    );
  }

  void delete(String id) async {
    emit(const UpdateVehicleViewModelState.loading());

    final res = await _deleteVehicleUsecase(id);

    res.fold(
      (error) {
        emit(const UpdateVehicleViewModelState.error());
      },
      (_) {
        emit(const UpdateVehicleViewModelState.successDelete());
      },
    );
  }
}
