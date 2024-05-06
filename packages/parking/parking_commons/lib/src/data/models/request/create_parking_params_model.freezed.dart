// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_parking_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateParkingParamsModel _$CreateParkingParamsModelFromJson(
    Map<String, dynamic> json) {
  return _CreateParkingParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CreateParkingParamsModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateParkingParamsModelCopyWith<CreateParkingParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateParkingParamsModelCopyWith<$Res> {
  factory $CreateParkingParamsModelCopyWith(CreateParkingParamsModel value,
          $Res Function(CreateParkingParamsModel) then) =
      _$CreateParkingParamsModelCopyWithImpl<$Res, CreateParkingParamsModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateParkingParamsModelCopyWithImpl<$Res,
        $Val extends CreateParkingParamsModel>
    implements $CreateParkingParamsModelCopyWith<$Res> {
  _$CreateParkingParamsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateParkingParamsModelImplCopyWith<$Res>
    implements $CreateParkingParamsModelCopyWith<$Res> {
  factory _$$CreateParkingParamsModelImplCopyWith(
          _$CreateParkingParamsModelImpl value,
          $Res Function(_$CreateParkingParamsModelImpl) then) =
      __$$CreateParkingParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateParkingParamsModelImplCopyWithImpl<$Res>
    extends _$CreateParkingParamsModelCopyWithImpl<$Res,
        _$CreateParkingParamsModelImpl>
    implements _$$CreateParkingParamsModelImplCopyWith<$Res> {
  __$$CreateParkingParamsModelImplCopyWithImpl(
      _$CreateParkingParamsModelImpl _value,
      $Res Function(_$CreateParkingParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateParkingParamsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateParkingParamsModelImpl extends _CreateParkingParamsModel {
  const _$CreateParkingParamsModelImpl({required this.name}) : super._();

  factory _$CreateParkingParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateParkingParamsModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateParkingParamsModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateParkingParamsModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateParkingParamsModelImplCopyWith<_$CreateParkingParamsModelImpl>
      get copyWith => __$$CreateParkingParamsModelImplCopyWithImpl<
          _$CreateParkingParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateParkingParamsModelImplToJson(
      this,
    );
  }
}

abstract class _CreateParkingParamsModel extends CreateParkingParamsModel {
  const factory _CreateParkingParamsModel({required final String name}) =
      _$CreateParkingParamsModelImpl;
  const _CreateParkingParamsModel._() : super._();

  factory _CreateParkingParamsModel.fromJson(Map<String, dynamic> json) =
      _$CreateParkingParamsModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreateParkingParamsModelImplCopyWith<_$CreateParkingParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
