import 'package:common_deps/common_deps.dart';

import '../../domain/domain.dart';
import '../../presentation/utils.dart';

class ModularDependencyManager implements DependencyManager {
  ModularDependencyManager._();

  static ModularDependencyManager? _instance;

  static ModularDependencyManager get i {
    return _instance ??= ModularDependencyManager._();
  }

  @override
  T get<T extends Object>() {
    return Modular.get<T>();
  }

  @override
  bool dispose<T extends Object>() {
    return Modular.dispose<T>();
  }

  @override
  T? getOrNull<T extends Object>() {
    try {
      return DM.get<T>();
    } catch (_) {
      return null;
    }
  }
}
