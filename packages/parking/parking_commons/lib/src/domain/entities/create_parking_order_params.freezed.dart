// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_parking_order_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateParkingOrderParams {
  Parking get parking => throw _privateConstructorUsedError;
  Vehicle get vehicle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateParkingOrderParamsCopyWith<CreateParkingOrderParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateParkingOrderParamsCopyWith<$Res> {
  factory $CreateParkingOrderParamsCopyWith(CreateParkingOrderParams value,
          $Res Function(CreateParkingOrderParams) then) =
      _$CreateParkingOrderParamsCopyWithImpl<$Res, CreateParkingOrderParams>;
  @useResult
  $Res call({Parking parking, Vehicle vehicle});

  $ParkingCopyWith<$Res> get parking;
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$CreateParkingOrderParamsCopyWithImpl<$Res,
        $Val extends CreateParkingOrderParams>
    implements $CreateParkingOrderParamsCopyWith<$Res> {
  _$CreateParkingOrderParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parking = null,
    Object? vehicle = null,
  }) {
    return _then(_value.copyWith(
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as Parking,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParkingCopyWith<$Res> get parking {
    return $ParkingCopyWith<$Res>(_value.parking, (value) {
      return _then(_value.copyWith(parking: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateParkingOrderParamsImplCopyWith<$Res>
    implements $CreateParkingOrderParamsCopyWith<$Res> {
  factory _$$CreateParkingOrderParamsImplCopyWith(
          _$CreateParkingOrderParamsImpl value,
          $Res Function(_$CreateParkingOrderParamsImpl) then) =
      __$$CreateParkingOrderParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Parking parking, Vehicle vehicle});

  @override
  $ParkingCopyWith<$Res> get parking;
  @override
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$CreateParkingOrderParamsImplCopyWithImpl<$Res>
    extends _$CreateParkingOrderParamsCopyWithImpl<$Res,
        _$CreateParkingOrderParamsImpl>
    implements _$$CreateParkingOrderParamsImplCopyWith<$Res> {
  __$$CreateParkingOrderParamsImplCopyWithImpl(
      _$CreateParkingOrderParamsImpl _value,
      $Res Function(_$CreateParkingOrderParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parking = null,
    Object? vehicle = null,
  }) {
    return _then(_$CreateParkingOrderParamsImpl(
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as Parking,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
    ));
  }
}

/// @nodoc

class _$CreateParkingOrderParamsImpl implements _CreateParkingOrderParams {
  const _$CreateParkingOrderParamsImpl(
      {required this.parking, required this.vehicle});

  @override
  final Parking parking;
  @override
  final Vehicle vehicle;

  @override
  String toString() {
    return 'CreateParkingOrderParams(parking: $parking, vehicle: $vehicle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateParkingOrderParamsImpl &&
            (identical(other.parking, parking) || other.parking == parking) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parking, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateParkingOrderParamsImplCopyWith<_$CreateParkingOrderParamsImpl>
      get copyWith => __$$CreateParkingOrderParamsImplCopyWithImpl<
          _$CreateParkingOrderParamsImpl>(this, _$identity);
}

abstract class _CreateParkingOrderParams implements CreateParkingOrderParams {
  const factory _CreateParkingOrderParams(
      {required final Parking parking,
      required final Vehicle vehicle}) = _$CreateParkingOrderParamsImpl;

  @override
  Parking get parking;
  @override
  Vehicle get vehicle;
  @override
  @JsonKey(ignore: true)
  _$$CreateParkingOrderParamsImplCopyWith<_$CreateParkingOrderParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
