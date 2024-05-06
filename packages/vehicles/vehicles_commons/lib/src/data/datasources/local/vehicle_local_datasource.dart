import 'package:core/core.dart';
import 'package:uuid/uuid.dart';

import '../../models/models.dart';

const String _kStorageKey = 'vehicles';

abstract class IVehicleLocalDataSource {
  Future<List<VehicleModel>> getAll();

  Future<VehicleModel> create(CreateVehicleParamsModel params);

  Future<VehicleModel> update({
    required String id,
    required UpdateVehicleParamsModel params,
  });

  Future<void> delete(String id);
}

class VehicleLocalDataSource implements IVehicleLocalDataSource {
  final IStorageClient<List<VehicleModel>> _storageClient;

  VehicleLocalDataSource(this._storageClient);

  @override
  Future<VehicleModel> create(CreateVehicleParamsModel params) async {
    final list = List<VehicleModel>.from(await getAll());

    final newVehicle = VehicleModel(
      id: const Uuid().v4(),
      name: params.name,
      plate: params.plate,
    );
    list.add(newVehicle);

    await _storageClient.save(_kStorageKey, list);
    return newVehicle;
  }

  @override
  Future<void> delete(String id) async {
    final list = List<VehicleModel>.from(await getAll());
    list.removeWhere((e) => e.id == id);
    await _storageClient.save(_kStorageKey, list);
  }

  @override
  Future<List<VehicleModel>> getAll() async {
    final result = await _storageClient.read(_kStorageKey);
    return result ?? [];
  }

  @override
  Future<VehicleModel> update({
    required String id,
    required UpdateVehicleParamsModel params,
  }) async {
    final list = List<VehicleModel>.from(await getAll());
    final vehicleIndex = list.indexWhere((e) => e.id == id);
    final updatedVehicle = list[vehicleIndex].copyWith(
      name: params.name,
    );

    list[vehicleIndex] = updatedVehicle;

    await _storageClient.save(_kStorageKey, list);
    return updatedVehicle;
  }
}
