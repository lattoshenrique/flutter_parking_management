import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import 'presentation/presentation.dart';

abstract class VehiclesModuleRouting {
  static const _root = VehiclesCommonsModulePaths.root;

  static const vehicleListPage = BasePath('/', _root);
  static const errorPage = BasePath('/error', _root);

  static void routes(RouteManager r) {
    r.child(
      vehicleListPage.path,
      child: (_) => const VehicleListPage(),
    );

    r.child(
      errorPage.path,
      child: (_) => CommonErrorPage(args: Nav.args.data),
    );
  }
}
