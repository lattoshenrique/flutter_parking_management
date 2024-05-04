// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleParamsModel _$VehicleParamsModelFromJson(Map<String, dynamic> json) {
  return _VehicleParamsModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleParamsModel {
  String get name => throw _privateConstructorUsedError;
  String get plate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleParamsModelCopyWith<VehicleParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleParamsModelCopyWith<$Res> {
  factory $VehicleParamsModelCopyWith(
          VehicleParamsModel value, $Res Function(VehicleParamsModel) then) =
      _$VehicleParamsModelCopyWithImpl<$Res, VehicleParamsModel>;
  @useResult
  $Res call({String name, String plate});
}

/// @nodoc
class _$VehicleParamsModelCopyWithImpl<$Res, $Val extends VehicleParamsModel>
    implements $VehicleParamsModelCopyWith<$Res> {
  _$VehicleParamsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$VehicleParamsModelImplCopyWith<$Res>
    implements $VehicleParamsModelCopyWith<$Res> {
  factory _$$VehicleParamsModelImplCopyWith(_$VehicleParamsModelImpl value,
          $Res Function(_$VehicleParamsModelImpl) then) =
      __$$VehicleParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String plate});
}

/// @nodoc
class __$$VehicleParamsModelImplCopyWithImpl<$Res>
    extends _$VehicleParamsModelCopyWithImpl<$Res, _$VehicleParamsModelImpl>
    implements _$$VehicleParamsModelImplCopyWith<$Res> {
  __$$VehicleParamsModelImplCopyWithImpl(_$VehicleParamsModelImpl _value,
      $Res Function(_$VehicleParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? plate = null,
  }) {
    return _then(_$VehicleParamsModelImpl(
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
class _$VehicleParamsModelImpl extends _VehicleParamsModel {
  const _$VehicleParamsModelImpl({required this.name, required this.plate})
      : super._();

  factory _$VehicleParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleParamsModelImplFromJson(json);

  @override
  final String name;
  @override
  final String plate;

  @override
  String toString() {
    return 'VehicleParamsModel(name: $name, plate: $plate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleParamsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.plate, plate) || other.plate == plate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, plate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleParamsModelImplCopyWith<_$VehicleParamsModelImpl> get copyWith =>
      __$$VehicleParamsModelImplCopyWithImpl<_$VehicleParamsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleParamsModelImplToJson(
      this,
    );
  }
}

abstract class _VehicleParamsModel extends VehicleParamsModel {
  const factory _VehicleParamsModel(
      {required final String name,
      required final String plate}) = _$VehicleParamsModelImpl;
  const _VehicleParamsModel._() : super._();

  factory _VehicleParamsModel.fromJson(Map<String, dynamic> json) =
      _$VehicleParamsModelImpl.fromJson;

  @override
  String get name;
  @override
  String get plate;
  @override
  @JsonKey(ignore: true)
  _$$VehicleParamsModelImplCopyWith<_$VehicleParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
