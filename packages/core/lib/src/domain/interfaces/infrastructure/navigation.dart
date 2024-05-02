import 'package:flutter/widgets.dart';

import 'navigation_arguments.dart';
import 'navigation_route.dart';

abstract class Navigation {
  NavigationArguments get args;

  String get currentPath;

  Future<T?> pushNamed<T extends Object?>(
    Object path, {
    Object? arguments,
    bool? forRoot,
  });

  Future<T?> push<T extends Object?>({required Route<T> route});

  Future<Object?> pushReplacementNamed(
    Object path, {
    Object? arguments,
    bool? forRoot,
  });

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    Object path,
    bool Function(Route) predicate, {
    Object? arguments,
    bool? forRoot,
  });

  void navigate(Object path, {dynamic arguments});

  void pop<T extends Object?>({T? response});

  void popUntil(bool Function(Route) predicate);

  void popUntilNamed(Object path, {bool strict = false});

  bool canPop();

  Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    Object path, {
    TO? result,
    Object? arguments,
    bool forRoot = false,
  });

  Future<bool> maybePop<T extends Object?>([T? result]);

  void addListener(VoidCallback listener);

  void removeListener(VoidCallback listener);

  List<NavigationRoute> get history;

  void setArguments(Object args) {}
}
