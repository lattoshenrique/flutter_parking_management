// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasePath {
  /// Current route path
  String get path => throw _privateConstructorUsedError;

  /// Parent route path
  BasePath? get rootPath => throw _privateConstructorUsedError;
}

/// @nodoc

class _$BasePathImpl extends _BasePath {
  const _$BasePathImpl(this.path, [this.rootPath]) : super._();

  /// Current route path
  @override
  final String path;

  /// Parent route path
  @override
  final BasePath? rootPath;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasePathImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.rootPath, rootPath) ||
                other.rootPath == rootPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, rootPath);
}

abstract class _BasePath extends BasePath {
  const factory _BasePath(final String path, [final BasePath? rootPath]) =
      _$BasePathImpl;
  const _BasePath._() : super._();

  @override

  /// Current route path
  String get path;
  @override

  /// Parent route path
  BasePath? get rootPath;
}
