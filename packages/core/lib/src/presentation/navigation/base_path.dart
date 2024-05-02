import 'package:common_deps/common_deps.dart';

part 'base_path.freezed.dart';

@Freezed(
  copyWith: false,
  toStringOverride: false,
)
sealed class BasePath with _$BasePath {
  const BasePath._();

  const factory BasePath(
    String path, [
    BasePath? rootPath,
  ]) = _BasePath;

  String get completePath {
    final base = rootPath?.completePath ?? '';
    return '$base${!base.endsWith('/') ? path : path.replaceFirst('/', '')}';
  }

  String get relativePath => path.replaceFirst('/', '');

  @override
  String toString() => completePath;
}
