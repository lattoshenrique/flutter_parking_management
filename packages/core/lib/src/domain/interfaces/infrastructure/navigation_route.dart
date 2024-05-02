abstract class NavigationRoute {
  String get path;

  String get name;

  @override
  String toString() => path;
}
