// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParkingOrder {
  String get id => throw _privateConstructorUsedError;
  Vehicle get vehicle => throw _privateConstructorUsedError;
  DateTime get entryDate => throw _privateConstructorUsedError;
  DateTime? get departureDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingOrderCopyWith<ParkingOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingOrderCopyWith<$Res> {
  factory $ParkingOrderCopyWith(
          ParkingOrder value, $Res Function(ParkingOrder) then) =
      _$ParkingOrderCopyWithImpl<$Res, ParkingOrder>;
  @useResult
  $Res call(
      {String id,
      Vehicle vehicle,
      DateTime entryDate,
      DateTime? departureDate});

  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$ParkingOrderCopyWithImpl<$Res, $Val extends ParkingOrder>
    implements $ParkingOrderCopyWith<$Res> {
  _$ParkingOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vehicle = null,
    Object? entryDate = null,
    Object? departureDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      entryDate: null == entryDate
          ? _value.entryDate
          : entryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureDate: freezed == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
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
abstract class _$$ParkingOrderImplCopyWith<$Res>
    implements $ParkingOrderCopyWith<$Res> {
  factory _$$ParkingOrderImplCopyWith(
          _$ParkingOrderImpl value, $Res Function(_$ParkingOrderImpl) then) =
      __$$ParkingOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Vehicle vehicle,
      DateTime entryDate,
      DateTime? departureDate});

  @override
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$ParkingOrderImplCopyWithImpl<$Res>
    extends _$ParkingOrderCopyWithImpl<$Res, _$ParkingOrderImpl>
    implements _$$ParkingOrderImplCopyWith<$Res> {
  __$$ParkingOrderImplCopyWithImpl(
      _$ParkingOrderImpl _value, $Res Function(_$ParkingOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vehicle = null,
    Object? entryDate = null,
    Object? departureDate = freezed,
  }) {
    return _then(_$ParkingOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      entryDate: null == entryDate
          ? _value.entryDate
          : entryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureDate: freezed == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ParkingOrderImpl implements _ParkingOrder {
  const _$ParkingOrderImpl(
      {required this.id,
      required this.vehicle,
      required this.entryDate,
      this.departureDate});

  @override
  final String id;
  @override
  final Vehicle vehicle;
  @override
  final DateTime entryDate;
  @override
  final DateTime? departureDate;

  @override
  String toString() {
    return 'ParkingOrder(id: $id, vehicle: $vehicle, entryDate: $entryDate, departureDate: $departureDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.entryDate, entryDate) ||
                other.entryDate == entryDate) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, vehicle, entryDate, departureDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingOrderImplCopyWith<_$ParkingOrderImpl> get copyWith =>
      __$$ParkingOrderImplCopyWithImpl<_$ParkingOrderImpl>(this, _$identity);
}

abstract class _ParkingOrder implements ParkingOrder {
  const factory _ParkingOrder(
      {required final String id,
      required final Vehicle vehicle,
      required final DateTime entryDate,
      final DateTime? departureDate}) = _$ParkingOrderImpl;

  @override
  String get id;
  @override
  Vehicle get vehicle;
  @override
  DateTime get entryDate;
  @override
  DateTime? get departureDate;
  @override
  @JsonKey(ignore: true)
  _$$ParkingOrderImplCopyWith<_$ParkingOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
