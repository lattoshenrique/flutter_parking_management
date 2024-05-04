// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleFailure {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleFailureCopyWith<VehicleFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleFailureCopyWith<$Res> {
  factory $VehicleFailureCopyWith(
          VehicleFailure value, $Res Function(VehicleFailure) then) =
      _$VehicleFailureCopyWithImpl<$Res, VehicleFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$VehicleFailureCopyWithImpl<$Res, $Val extends VehicleFailure>
    implements $VehicleFailureCopyWith<$Res> {
  _$VehicleFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$VehicleUnexpectedFailureImplCopyWith<$Res>
    implements $VehicleFailureCopyWith<$Res> {
  factory _$$VehicleUnexpectedFailureImplCopyWith(
          _$VehicleUnexpectedFailureImpl value,
          $Res Function(_$VehicleUnexpectedFailureImpl) then) =
      __$$VehicleUnexpectedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VehicleUnexpectedFailureImplCopyWithImpl<$Res>
    extends _$VehicleFailureCopyWithImpl<$Res, _$VehicleUnexpectedFailureImpl>
    implements _$$VehicleUnexpectedFailureImplCopyWith<$Res> {
  __$$VehicleUnexpectedFailureImplCopyWithImpl(
      _$VehicleUnexpectedFailureImpl _value,
      $Res Function(_$VehicleUnexpectedFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VehicleUnexpectedFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VehicleUnexpectedFailureImpl implements VehicleUnexpectedFailure {
  const _$VehicleUnexpectedFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'VehicleFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleUnexpectedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleUnexpectedFailureImplCopyWith<_$VehicleUnexpectedFailureImpl>
      get copyWith => __$$VehicleUnexpectedFailureImplCopyWithImpl<
          _$VehicleUnexpectedFailureImpl>(this, _$identity);
}

abstract class VehicleUnexpectedFailure implements VehicleFailure {
  const factory VehicleUnexpectedFailure([final String? message]) =
      _$VehicleUnexpectedFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$VehicleUnexpectedFailureImplCopyWith<_$VehicleUnexpectedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehiclePlateExistsFailureImplCopyWith<$Res>
    implements $VehicleFailureCopyWith<$Res> {
  factory _$$VehiclePlateExistsFailureImplCopyWith(
          _$VehiclePlateExistsFailureImpl value,
          $Res Function(_$VehiclePlateExistsFailureImpl) then) =
      __$$VehiclePlateExistsFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VehiclePlateExistsFailureImplCopyWithImpl<$Res>
    extends _$VehicleFailureCopyWithImpl<$Res, _$VehiclePlateExistsFailureImpl>
    implements _$$VehiclePlateExistsFailureImplCopyWith<$Res> {
  __$$VehiclePlateExistsFailureImplCopyWithImpl(
      _$VehiclePlateExistsFailureImpl _value,
      $Res Function(_$VehiclePlateExistsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VehiclePlateExistsFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VehiclePlateExistsFailureImpl implements VehiclePlateExistsFailure {
  const _$VehiclePlateExistsFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'VehicleFailure.plateExists(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehiclePlateExistsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehiclePlateExistsFailureImplCopyWith<_$VehiclePlateExistsFailureImpl>
      get copyWith => __$$VehiclePlateExistsFailureImplCopyWithImpl<
          _$VehiclePlateExistsFailureImpl>(this, _$identity);
}

abstract class VehiclePlateExistsFailure implements VehicleFailure {
  const factory VehiclePlateExistsFailure([final String? message]) =
      _$VehiclePlateExistsFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$VehiclePlateExistsFailureImplCopyWith<_$VehiclePlateExistsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleStorageFailureImplCopyWith<$Res>
    implements $VehicleFailureCopyWith<$Res> {
  factory _$$VehicleStorageFailureImplCopyWith(
          _$VehicleStorageFailureImpl value,
          $Res Function(_$VehicleStorageFailureImpl) then) =
      __$$VehicleStorageFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VehicleStorageFailureImplCopyWithImpl<$Res>
    extends _$VehicleFailureCopyWithImpl<$Res, _$VehicleStorageFailureImpl>
    implements _$$VehicleStorageFailureImplCopyWith<$Res> {
  __$$VehicleStorageFailureImplCopyWithImpl(_$VehicleStorageFailureImpl _value,
      $Res Function(_$VehicleStorageFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VehicleStorageFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VehicleStorageFailureImpl implements VehicleStorageFailure {
  const _$VehicleStorageFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'VehicleFailure.storage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleStorageFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleStorageFailureImplCopyWith<_$VehicleStorageFailureImpl>
      get copyWith => __$$VehicleStorageFailureImplCopyWithImpl<
          _$VehicleStorageFailureImpl>(this, _$identity);
}

abstract class VehicleStorageFailure implements VehicleFailure {
  const factory VehicleStorageFailure([final String? message]) =
      _$VehicleStorageFailureImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$VehicleStorageFailureImplCopyWith<_$VehicleStorageFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
