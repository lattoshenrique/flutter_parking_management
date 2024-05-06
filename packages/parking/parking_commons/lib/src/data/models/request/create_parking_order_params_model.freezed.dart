// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_parking_order_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateParkingOrderParamsModel _$CreateParkingOrderParamsModelFromJson(
    Map<String, dynamic> json) {
  return _CreateParkingOrderParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CreateParkingOrderParamsModel {
  String get parkingId => throw _privateConstructorUsedError;
  VehicleModel get vehicle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateParkingOrderParamsModelCopyWith<CreateParkingOrderParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateParkingOrderParamsModelCopyWith<$Res> {
  factory $CreateParkingOrderParamsModelCopyWith(
          CreateParkingOrderParamsModel value,
          $Res Function(CreateParkingOrderParamsModel) then) =
      _$CreateParkingOrderParamsModelCopyWithImpl<$Res,
          CreateParkingOrderParamsModel>;
  @useResult
  $Res call({String parkingId, VehicleModel vehicle});

  $VehicleModelCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$CreateParkingOrderParamsModelCopyWithImpl<$Res,
        $Val extends CreateParkingOrderParamsModel>
    implements $CreateParkingOrderParamsModelCopyWith<$Res> {
  _$CreateParkingOrderParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingId = null,
    Object? vehicle = null,
  }) {
    return _then(_value.copyWith(
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleModelCopyWith<$Res> get vehicle {
    return $VehicleModelCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateParkingOrderParamsModelImplCopyWith<$Res>
    implements $CreateParkingOrderParamsModelCopyWith<$Res> {
  factory _$$CreateParkingOrderParamsModelImplCopyWith(
          _$CreateParkingOrderParamsModelImpl value,
          $Res Function(_$CreateParkingOrderParamsModelImpl) then) =
      __$$CreateParkingOrderParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String parkingId, VehicleModel vehicle});

  @override
  $VehicleModelCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$CreateParkingOrderParamsModelImplCopyWithImpl<$Res>
    extends _$CreateParkingOrderParamsModelCopyWithImpl<$Res,
        _$CreateParkingOrderParamsModelImpl>
    implements _$$CreateParkingOrderParamsModelImplCopyWith<$Res> {
  __$$CreateParkingOrderParamsModelImplCopyWithImpl(
      _$CreateParkingOrderParamsModelImpl _value,
      $Res Function(_$CreateParkingOrderParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingId = null,
    Object? vehicle = null,
  }) {
    return _then(_$CreateParkingOrderParamsModelImpl(
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateParkingOrderParamsModelImpl
    extends _CreateParkingOrderParamsModel {
  const _$CreateParkingOrderParamsModelImpl(
      {required this.parkingId, required this.vehicle})
      : super._();

  factory _$CreateParkingOrderParamsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateParkingOrderParamsModelImplFromJson(json);

  @override
  final String parkingId;
  @override
  final VehicleModel vehicle;

  @override
  String toString() {
    return 'CreateParkingOrderParamsModel(parkingId: $parkingId, vehicle: $vehicle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateParkingOrderParamsModelImpl &&
            (identical(other.parkingId, parkingId) ||
                other.parkingId == parkingId) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parkingId, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateParkingOrderParamsModelImplCopyWith<
          _$CreateParkingOrderParamsModelImpl>
      get copyWith => __$$CreateParkingOrderParamsModelImplCopyWithImpl<
          _$CreateParkingOrderParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateParkingOrderParamsModelImplToJson(
      this,
    );
  }
}

abstract class _CreateParkingOrderParamsModel
    extends CreateParkingOrderParamsModel {
  const factory _CreateParkingOrderParamsModel(
          {required final String parkingId,
          required final VehicleModel vehicle}) =
      _$CreateParkingOrderParamsModelImpl;
  const _CreateParkingOrderParamsModel._() : super._();

  factory _CreateParkingOrderParamsModel.fromJson(Map<String, dynamic> json) =
      _$CreateParkingOrderParamsModelImpl.fromJson;

  @override
  String get parkingId;
  @override
  VehicleModel get vehicle;
  @override
  @JsonKey(ignore: true)
  _$$CreateParkingOrderParamsModelImplCopyWith<
          _$CreateParkingOrderParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
