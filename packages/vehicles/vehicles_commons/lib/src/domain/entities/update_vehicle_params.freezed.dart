// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_vehicle_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateVehicleParams {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateVehicleParamsCopyWith<UpdateVehicleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateVehicleParamsCopyWith<$Res> {
  factory $UpdateVehicleParamsCopyWith(
          UpdateVehicleParams value, $Res Function(UpdateVehicleParams) then) =
      _$UpdateVehicleParamsCopyWithImpl<$Res, UpdateVehicleParams>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$UpdateVehicleParamsCopyWithImpl<$Res, $Val extends UpdateVehicleParams>
    implements $UpdateVehicleParamsCopyWith<$Res> {
  _$UpdateVehicleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateVehicleParamsImplCopyWith<$Res>
    implements $UpdateVehicleParamsCopyWith<$Res> {
  factory _$$UpdateVehicleParamsImplCopyWith(_$UpdateVehicleParamsImpl value,
          $Res Function(_$UpdateVehicleParamsImpl) then) =
      __$$UpdateVehicleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateVehicleParamsImplCopyWithImpl<$Res>
    extends _$UpdateVehicleParamsCopyWithImpl<$Res, _$UpdateVehicleParamsImpl>
    implements _$$UpdateVehicleParamsImplCopyWith<$Res> {
  __$$UpdateVehicleParamsImplCopyWithImpl(_$UpdateVehicleParamsImpl _value,
      $Res Function(_$UpdateVehicleParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateVehicleParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateVehicleParamsImpl implements _UpdateVehicleParams {
  const _$UpdateVehicleParamsImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'UpdateVehicleParams(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateVehicleParamsImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateVehicleParamsImplCopyWith<_$UpdateVehicleParamsImpl> get copyWith =>
      __$$UpdateVehicleParamsImplCopyWithImpl<_$UpdateVehicleParamsImpl>(
          this, _$identity);
}

abstract class _UpdateVehicleParams implements UpdateVehicleParams {
  const factory _UpdateVehicleParams({required final String name}) =
      _$UpdateVehicleParamsImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UpdateVehicleParamsImplCopyWith<_$UpdateVehicleParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
