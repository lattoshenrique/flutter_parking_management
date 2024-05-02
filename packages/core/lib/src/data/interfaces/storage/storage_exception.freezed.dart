// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StorageException {
  String? get cause => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageExceptionCopyWith<StorageException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageExceptionCopyWith<$Res> {
  factory $StorageExceptionCopyWith(
          StorageException value, $Res Function(StorageException) then) =
      _$StorageExceptionCopyWithImpl<$Res, StorageException>;
  @useResult
  $Res call({String? cause});
}

/// @nodoc
class _$StorageExceptionCopyWithImpl<$Res, $Val extends StorageException>
    implements $StorageExceptionCopyWith<$Res> {
  _$StorageExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cause = freezed,
  }) {
    return _then(_value.copyWith(
      cause: freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageSaveExceptionImplCopyWith<$Res>
    implements $StorageExceptionCopyWith<$Res> {
  factory _$$StorageSaveExceptionImplCopyWith(_$StorageSaveExceptionImpl value,
          $Res Function(_$StorageSaveExceptionImpl) then) =
      __$$StorageSaveExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cause});
}

/// @nodoc
class __$$StorageSaveExceptionImplCopyWithImpl<$Res>
    extends _$StorageExceptionCopyWithImpl<$Res, _$StorageSaveExceptionImpl>
    implements _$$StorageSaveExceptionImplCopyWith<$Res> {
  __$$StorageSaveExceptionImplCopyWithImpl(_$StorageSaveExceptionImpl _value,
      $Res Function(_$StorageSaveExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cause = freezed,
  }) {
    return _then(_$StorageSaveExceptionImpl(
      freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StorageSaveExceptionImpl implements StorageSaveException {
  const _$StorageSaveExceptionImpl([this.cause]);

  @override
  final String? cause;

  @override
  String toString() {
    return 'StorageException.save(cause: $cause)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageSaveExceptionImpl &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageSaveExceptionImplCopyWith<_$StorageSaveExceptionImpl>
      get copyWith =>
          __$$StorageSaveExceptionImplCopyWithImpl<_$StorageSaveExceptionImpl>(
              this, _$identity);
}

abstract class StorageSaveException implements StorageException {
  const factory StorageSaveException([final String? cause]) =
      _$StorageSaveExceptionImpl;

  @override
  String? get cause;
  @override
  @JsonKey(ignore: true)
  _$$StorageSaveExceptionImplCopyWith<_$StorageSaveExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageFetchExceptionImplCopyWith<$Res>
    implements $StorageExceptionCopyWith<$Res> {
  factory _$$StorageFetchExceptionImplCopyWith(
          _$StorageFetchExceptionImpl value,
          $Res Function(_$StorageFetchExceptionImpl) then) =
      __$$StorageFetchExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cause});
}

/// @nodoc
class __$$StorageFetchExceptionImplCopyWithImpl<$Res>
    extends _$StorageExceptionCopyWithImpl<$Res, _$StorageFetchExceptionImpl>
    implements _$$StorageFetchExceptionImplCopyWith<$Res> {
  __$$StorageFetchExceptionImplCopyWithImpl(_$StorageFetchExceptionImpl _value,
      $Res Function(_$StorageFetchExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cause = freezed,
  }) {
    return _then(_$StorageFetchExceptionImpl(
      freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StorageFetchExceptionImpl implements StorageFetchException {
  const _$StorageFetchExceptionImpl([this.cause]);

  @override
  final String? cause;

  @override
  String toString() {
    return 'StorageException.fetch(cause: $cause)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageFetchExceptionImpl &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageFetchExceptionImplCopyWith<_$StorageFetchExceptionImpl>
      get copyWith => __$$StorageFetchExceptionImplCopyWithImpl<
          _$StorageFetchExceptionImpl>(this, _$identity);
}

abstract class StorageFetchException implements StorageException {
  const factory StorageFetchException([final String? cause]) =
      _$StorageFetchExceptionImpl;

  @override
  String? get cause;
  @override
  @JsonKey(ignore: true)
  _$$StorageFetchExceptionImplCopyWith<_$StorageFetchExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageDeleteExceptionImplCopyWith<$Res>
    implements $StorageExceptionCopyWith<$Res> {
  factory _$$StorageDeleteExceptionImplCopyWith(
          _$StorageDeleteExceptionImpl value,
          $Res Function(_$StorageDeleteExceptionImpl) then) =
      __$$StorageDeleteExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cause});
}

/// @nodoc
class __$$StorageDeleteExceptionImplCopyWithImpl<$Res>
    extends _$StorageExceptionCopyWithImpl<$Res, _$StorageDeleteExceptionImpl>
    implements _$$StorageDeleteExceptionImplCopyWith<$Res> {
  __$$StorageDeleteExceptionImplCopyWithImpl(
      _$StorageDeleteExceptionImpl _value,
      $Res Function(_$StorageDeleteExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cause = freezed,
  }) {
    return _then(_$StorageDeleteExceptionImpl(
      freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StorageDeleteExceptionImpl implements StorageDeleteException {
  const _$StorageDeleteExceptionImpl([this.cause]);

  @override
  final String? cause;

  @override
  String toString() {
    return 'StorageException.delete(cause: $cause)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageDeleteExceptionImpl &&
            (identical(other.cause, cause) || other.cause == cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageDeleteExceptionImplCopyWith<_$StorageDeleteExceptionImpl>
      get copyWith => __$$StorageDeleteExceptionImplCopyWithImpl<
          _$StorageDeleteExceptionImpl>(this, _$identity);
}

abstract class StorageDeleteException implements StorageException {
  const factory StorageDeleteException([final String? cause]) =
      _$StorageDeleteExceptionImpl;

  @override
  String? get cause;
  @override
  @JsonKey(ignore: true)
  _$$StorageDeleteExceptionImplCopyWith<_$StorageDeleteExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
