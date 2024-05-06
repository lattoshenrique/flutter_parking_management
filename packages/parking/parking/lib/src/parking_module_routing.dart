import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:parking_commons/parking_commons.dart';

import 'presentation/presentation.dart';

abstract class ParkingModuleRouting {
  static const _root = ParkingCommonsModulePaths.root;

  static const allParkingView = BasePath('/', _root);
  static const parkingView = BasePath('/view', _root);
  static const setOrder = BasePath('/setOrder', _root);
  static const errorPage = BasePath('/error', _root);

  static void routes(RouteManager r) {
    r.child(
      allParkingView.path,
      child: (_) => const AllParkingPage(),
    );

    r.child(
      parkingView.path,
      child: (_) => ParkingViewPage(parking: Nav.args.data),
    );

    r.child(
      errorPage.path,
      child: (_) => CommonErrorPage(args: Nav.args.data),
    );
  }
}
