import 'package:common_deps/common_deps.dart';

import 'home_module_routing.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) => HomeModuleRouting.routes(r);
}
