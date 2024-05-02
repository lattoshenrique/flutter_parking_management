import 'package:common_deps/common_deps.dart';

import '../../domain/domain.dart';

class ModularNavigationRoute implements NavigationRoute {
  final ParallelRoute<dynamic> _route;

  ModularNavigationRoute(this._route);

  @override
  String get name => _route.name;

  @override
  String get path => _route.uri.path;

  @override
  String toString() => path;
}
