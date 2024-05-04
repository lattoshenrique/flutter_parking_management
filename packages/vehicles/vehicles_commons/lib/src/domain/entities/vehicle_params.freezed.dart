// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleParams {
  String get name => throw _privateConstructorUsedError;
  String get plate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleParamsCopyWith<VehicleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleParamsCopyWith<$Res> {
  factory $VehicleParamsCopyWith(
          VehicleParams value, $Res Function(VehicleParams) then) =
      _$VehicleParamsCopyWithImpl<$Res, VehicleParams>;
  @useResult
  $Res call({String name, String plate});
}

/// @nodoc
class _$VehicleParamsCopyWithImpl<$Res, $Val extends VehicleParams>
    implements $VehicleParamsCopyWith<$Res> {
  _$VehicleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? plate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleParamsImplCopyWith<$Res>
    implements $VehicleParamsCopyWith<$Res> {
  factory _$$VehicleParamsImplCopyWith(
          _$VehicleParamsImpl value, $Res Function(_$VehicleParamsImpl) then) =
      __$$VehicleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String plate});
}

/// @nodoc
class __$$VehicleParamsImplCopyWithImpl<$Res>
    extends _$VehicleParamsCopyWithImpl<$Res, _$VehicleParamsImpl>
    implements _$$VehicleParamsImplCopyWith<$Res> {
  __$$VehicleParamsImplCopyWithImpl(
      _$VehicleParamsImpl _value, $Res Function(_$VehicleParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? plate = null,
  }) {
    return _then(_$VehicleParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleParamsImpl implements _VehicleParams {
  const _$VehicleParamsImpl({required this.name, required this.plate});

  @override
  final String name;
  @override
  final String plate;

  @override
  String toString() {
    return 'VehicleParams(name: $name, plate: $plate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.plate, plate) || other.plate == plate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, plate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleParamsImplCopyWith<_$VehicleParamsImpl> get copyWith =>
      __$$VehicleParamsImplCopyWithImpl<_$VehicleParamsImpl>(this, _$identity);
}

abstract class _VehicleParams implements VehicleParams {
  const factory _VehicleParams(
      {required final String name,
      required final String plate}) = _$VehicleParamsImpl;

  @override
  String get name;
  @override
  String get plate;
  @override
  @JsonKey(ignore: true)
  _$$VehicleParamsImplCopyWith<_$VehicleParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
