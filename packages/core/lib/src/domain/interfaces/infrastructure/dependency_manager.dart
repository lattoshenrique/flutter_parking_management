abstract class DependencyManager {
  T get<T extends Object>();
  T? getOrNull<T extends Object>();
  bool dispose<T extends Object>();
}
