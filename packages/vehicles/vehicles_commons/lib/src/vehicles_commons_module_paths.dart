import 'package:core/core.dart';

abstract class VehiclesCommonsModulePaths {
  static const root = BasePath('/vehicles');

  static const addNewVehicle = BasePath('/add', root);

  static const updateVehicle = BasePath('/update', root);
}
