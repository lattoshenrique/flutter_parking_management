import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';

import 'presentation/presentation.dart';

abstract class HomeModuleRouting {
  static const root = BasePath('/home');

  static const dashBoard = BasePath('/', root);

  static void routes(RouteManager r) {
    r.child(
      dashBoard.path,
      child: (_) => const Dashboardpage(),
    );
  }
}
