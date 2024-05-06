// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParkingFailure {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingFailureCopyWith<ParkingFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingFailureCopyWith<$Res> {
  factory $ParkingFailureCopyWith(
          ParkingFailure value, $Res Function(ParkingFailure) then) =
      _$ParkingFailureCopyWithImpl<$Res, ParkingFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ParkingFailureCopyWithImpl<$Res, $Val extends ParkingFailure>
    implements $ParkingFailureCopyWith<$Res> {
  _$ParkingFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParkingUnexpectedFailureImplCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$$ParkingUnexpectedFailureImplCopyWith(
          _$ParkingUnexpectedFailureImpl value,
          $Res Function(_$ParkingUnexpectedFailureImpl) then) =
      __$$ParkingUnexpectedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ParkingUnexpectedFailureImplCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res, _$ParkingUnexpectedFailureImpl>
    implements _$$ParkingUnexpectedFailureImplCopyWith<$Res> {
  __$$ParkingUnexpectedFailureImplCopyWithImpl(
      _$ParkingUnexpectedFailureImpl _value,
      $Res Function(_$ParkingUnexpectedFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ParkingUnexpectedFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParkingUnexpectedFailureImpl implements ParkingUnexpectedFailure {
  const _$ParkingUnexpectedFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ParkingFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingUnexpectedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingUnexpectedFailureImplCopyWith<_$ParkingUnexpectedFailureImpl>
      get copyWith => __$$ParkingUnexpectedFailureImplCopyWithImpl<
          _$ParkingUnexpectedFailureImpl>(this, _$identity);
}

abstract class ParkingUnexpectedFailure implements ParkingFailure {
  const factory ParkingUnexpectedFailure([final String? message]) =
      _$ParkingUnexpectedFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ParkingUnexpectedFailureImplCopyWith<_$ParkingUnexpectedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParkingPlateExistsFailureImplCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$$ParkingPlateExistsFailureImplCopyWith(
          _$ParkingPlateExistsFailureImpl value,
          $Res Function(_$ParkingPlateExistsFailureImpl) then) =
      __$$ParkingPlateExistsFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ParkingPlateExistsFailureImplCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res, _$ParkingPlateExistsFailureImpl>
    implements _$$ParkingPlateExistsFailureImplCopyWith<$Res> {
  __$$ParkingPlateExistsFailureImplCopyWithImpl(
      _$ParkingPlateExistsFailureImpl _value,
      $Res Function(_$ParkingPlateExistsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ParkingPlateExistsFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParkingPlateExistsFailureImpl implements ParkingPlateExistsFailure {
  const _$ParkingPlateExistsFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ParkingFailure.plateExists(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingPlateExistsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingPlateExistsFailureImplCopyWith<_$ParkingPlateExistsFailureImpl>
      get copyWith => __$$ParkingPlateExistsFailureImplCopyWithImpl<
          _$ParkingPlateExistsFailureImpl>(this, _$identity);
}

abstract class ParkingPlateExistsFailure implements ParkingFailure {
  const factory ParkingPlateExistsFailure([final String? message]) =
      _$ParkingPlateExistsFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ParkingPlateExistsFailureImplCopyWith<_$ParkingPlateExistsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParkingStorageFailureImplCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$$ParkingStorageFailureImplCopyWith(
          _$ParkingStorageFailureImpl value,
          $Res Function(_$ParkingStorageFailureImpl) then) =
      __$$ParkingStorageFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ParkingStorageFailureImplCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res, _$ParkingStorageFailureImpl>
    implements _$$ParkingStorageFailureImplCopyWith<$Res> {
  __$$ParkingStorageFailureImplCopyWithImpl(_$ParkingStorageFailureImpl _value,
      $Res Function(_$ParkingStorageFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ParkingStorageFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParkingStorageFailureImpl implements ParkingStorageFailure {
  const _$ParkingStorageFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ParkingFailure.storage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingStorageFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingStorageFailureImplCopyWith<_$ParkingStorageFailureImpl>
      get copyWith => __$$ParkingStorageFailureImplCopyWithImpl<
          _$ParkingStorageFailureImpl>(this, _$identity);
}

abstract class ParkingStorageFailure implements ParkingFailure {
  const factory ParkingStorageFailure([final String? message]) =
      _$ParkingStorageFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ParkingStorageFailureImplCopyWith<_$ParkingStorageFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
