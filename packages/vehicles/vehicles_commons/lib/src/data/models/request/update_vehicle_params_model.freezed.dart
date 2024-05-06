// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_vehicle_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateVehicleParamsModel _$UpdateVehicleParamsModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateVehicleParamsModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateVehicleParamsModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateVehicleParamsModelCopyWith<UpdateVehicleParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateVehicleParamsModelCopyWith<$Res> {
  factory $UpdateVehicleParamsModelCopyWith(UpdateVehicleParamsModel value,
          $Res Function(UpdateVehicleParamsModel) then) =
      _$UpdateVehicleParamsModelCopyWithImpl<$Res, UpdateVehicleParamsModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$UpdateVehicleParamsModelCopyWithImpl<$Res,
        $Val extends UpdateVehicleParamsModel>
    implements $UpdateVehicleParamsModelCopyWith<$Res> {
  _$UpdateVehicleParamsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateVehicleParamsModelImplCopyWith<$Res>
    implements $UpdateVehicleParamsModelCopyWith<$Res> {
  factory _$$UpdateVehicleParamsModelImplCopyWith(
          _$UpdateVehicleParamsModelImpl value,
          $Res Function(_$UpdateVehicleParamsModelImpl) then) =
      __$$UpdateVehicleParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateVehicleParamsModelImplCopyWithImpl<$Res>
    extends _$UpdateVehicleParamsModelCopyWithImpl<$Res,
        _$UpdateVehicleParamsModelImpl>
    implements _$$UpdateVehicleParamsModelImplCopyWith<$Res> {
  __$$UpdateVehicleParamsModelImplCopyWithImpl(
      _$UpdateVehicleParamsModelImpl _value,
      $Res Function(_$UpdateVehicleParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateVehicleParamsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateVehicleParamsModelImpl extends _UpdateVehicleParamsModel {
  const _$UpdateVehicleParamsModelImpl({required this.name}) : super._();

  factory _$UpdateVehicleParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateVehicleParamsModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdateVehicleParamsModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateVehicleParamsModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateVehicleParamsModelImplCopyWith<_$UpdateVehicleParamsModelImpl>
      get copyWith => __$$UpdateVehicleParamsModelImplCopyWithImpl<
          _$UpdateVehicleParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateVehicleParamsModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateVehicleParamsModel extends UpdateVehicleParamsModel {
  const factory _UpdateVehicleParamsModel({required final String name}) =
      _$UpdateVehicleParamsModelImpl;
  const _UpdateVehicleParamsModel._() : super._();

  factory _UpdateVehicleParamsModel.fromJson(Map<String, dynamic> json) =
      _$UpdateVehicleParamsModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UpdateVehicleParamsModelImplCopyWith<_$UpdateVehicleParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
