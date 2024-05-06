// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_vehicle_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateVehicleParamsModel _$CreateVehicleParamsModelFromJson(
    Map<String, dynamic> json) {
  return _CreateVehicleParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CreateVehicleParamsModel {
  String get name => throw _privateConstructorUsedError;
  String get plate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateVehicleParamsModelCopyWith<CreateVehicleParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateVehicleParamsModelCopyWith<$Res> {
  factory $CreateVehicleParamsModelCopyWith(CreateVehicleParamsModel value,
          $Res Function(CreateVehicleParamsModel) then) =
      _$CreateVehicleParamsModelCopyWithImpl<$Res, CreateVehicleParamsModel>;
  @useResult
  $Res call({String name, String plate});
}

/// @nodoc
class _$CreateVehicleParamsModelCopyWithImpl<$Res,
        $Val extends CreateVehicleParamsModel>
    implements $CreateVehicleParamsModelCopyWith<$Res> {
  _$CreateVehicleParamsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateVehicleParamsModelImplCopyWith<$Res>
    implements $CreateVehicleParamsModelCopyWith<$Res> {
  factory _$$CreateVehicleParamsModelImplCopyWith(
          _$CreateVehicleParamsModelImpl value,
          $Res Function(_$CreateVehicleParamsModelImpl) then) =
      __$$CreateVehicleParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String plate});
}

/// @nodoc
class __$$CreateVehicleParamsModelImplCopyWithImpl<$Res>
    extends _$CreateVehicleParamsModelCopyWithImpl<$Res,
        _$CreateVehicleParamsModelImpl>
    implements _$$CreateVehicleParamsModelImplCopyWith<$Res> {
  __$$CreateVehicleParamsModelImplCopyWithImpl(
      _$CreateVehicleParamsModelImpl _value,
      $Res Function(_$CreateVehicleParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? plate = null,
  }) {
    return _then(_$CreateVehicleParamsModelImpl(
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
@JsonSerializable()
class _$CreateVehicleParamsModelImpl extends _CreateVehicleParamsModel {
  const _$CreateVehicleParamsModelImpl(
      {required this.name, required this.plate})
      : super._();

  factory _$CreateVehicleParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateVehicleParamsModelImplFromJson(json);

  @override
  final String name;
  @override
  final String plate;

  @override
  String toString() {
    return 'CreateVehicleParamsModel(name: $name, plate: $plate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateVehicleParamsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.plate, plate) || other.plate == plate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, plate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateVehicleParamsModelImplCopyWith<_$CreateVehicleParamsModelImpl>
      get copyWith => __$$CreateVehicleParamsModelImplCopyWithImpl<
          _$CreateVehicleParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateVehicleParamsModelImplToJson(
      this,
    );
  }
}

abstract class _CreateVehicleParamsModel extends CreateVehicleParamsModel {
  const factory _CreateVehicleParamsModel(
      {required final String name,
      required final String plate}) = _$CreateVehicleParamsModelImpl;
  const _CreateVehicleParamsModel._() : super._();

  factory _CreateVehicleParamsModel.fromJson(Map<String, dynamic> json) =
      _$CreateVehicleParamsModelImpl.fromJson;

  @override
  String get name;
  @override
  String get plate;
  @override
  @JsonKey(ignore: true)
  _$$CreateVehicleParamsModelImplCopyWith<_$CreateVehicleParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
