import 'package:common_deps/common_deps.dart';

class _GlobalBinds extends Module {
  @override
  void binds(Injector i) {
    i.addInstance<HiveInterface>(Hive);
  }
}

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  List<Module> get imports => [
        _GlobalBinds(),
      ];

  @override
  void routes(RouteManager r) {}
}
