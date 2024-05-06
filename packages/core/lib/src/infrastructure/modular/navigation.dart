import 'package:common_deps/common_deps.dart';
import 'package:flutter/material.dart';

import '../../domain/domain.dart';
import '../../presentation/utils/utils.dart';
import 'navigation_arguments.dart';
import 'navigation_route.dart';

class ModularNavigation implements Navigation {
  final ModularNavigationArguments _args = ModularNavigationArguments();

  ModularNavigation._();

  static ModularNavigation? _instance;

  static ModularNavigation get i {
    return _instance ??= ModularNavigation._();
  }

  @override
  NavigationArguments get args => _args;

  @override
  bool canPop() {
    return Modular.to.canPop();
  }

  @override
  void pop<T extends Object?>({T? response}) {
    if (response != null) {
      Modular.to.pop(response);
    } else {
      Modular.to.pop();
    }
  }

  @override
  Future<T?> pushNamed<T extends Object?>(
    Object path, {
    Object? arguments,
    bool? forRoot,
  }) async {
    return Modular.to.pushNamed<T?>(
      path.toString(),
      arguments: arguments,
      forRoot: forRoot ?? false,
    );
  }

  @override
  Future<T?> push<T extends Object?>({required Route<T> route}) async {
    return Modular.to.push<T>(route);
  }

  @override
  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    Object path,
    bool Function(Route) predicate, {
    Object? arguments,
    bool? forRoot,
  }) async {
    return Modular.to.pushNamedAndRemoveUntil<T>(
      path.toString(),
      predicate,
      arguments: arguments,
      forRoot: forRoot ?? false,
    );
  }

  @override
  Future<Object?> pushReplacementNamed(
    Object path, {
    Object? arguments,
    bool? forRoot,
  }) {
    return Modular.to.pushReplacementNamed<dynamic, dynamic>(
      path.toString(),
      arguments: arguments,
      forRoot: forRoot ?? false,
    );
  }

  @override
  Future<void> navigate(Object path, {dynamic arguments}) async {
    return Modular.to.navigate(path.toString(), arguments: arguments);
  }

  @override
  void popUntil(bool Function(Route) predicate) {
    Modular.to.popUntil(predicate);
  }

  @override
  Future<bool> maybePop<T extends Object?>([T? result]) {
    return Modular.to.maybePop(result);
  }

  @override
  List<NavigationRoute> get history =>
      Modular.to.navigateHistory.map(ModularNavigationRoute.new).toList();

  @override
  void addListener(VoidCallback listener) {
    Modular.to.addListener(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    Modular.to.removeListener(listener);
  }

  @override
  Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    Object path, {
    TO? result,
    Object? arguments,
    bool forRoot = false,
  }) {
    return Modular.to.popAndPushNamed(
      path.toString(),
      result: result,
      arguments: arguments,
      forRoot: forRoot,
    );
  }

  @override
  String get currentPath => Modular.to.path;

  @override
  void setArguments(Object args) {
    return Modular.setArguments(args);
  }

  @override
  void popUntilNamed(Object path, {bool strict = false}) {
    final [_, ...rest] = Nav.history.splitBefore(
      (historyPath) {
        final effectivePath = path.toString();
        if (strict) {
          return effectivePath == historyPath.path;
        }
        return historyPath.path.contains(effectivePath);
      },
    ).toList();

    for (final _ in rest.flattened) {
      Nav.pop();
    }
  }
}
