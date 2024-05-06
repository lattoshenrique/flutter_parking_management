// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParkingOrderModel _$ParkingOrderModelFromJson(Map<String, dynamic> json) {
  return _ParkingOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ParkingOrderModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  VehicleModel get vehicle => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get entryDate => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get departureDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingOrderModelCopyWith<ParkingOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingOrderModelCopyWith<$Res> {
  factory $ParkingOrderModelCopyWith(
          ParkingOrderModel value, $Res Function(ParkingOrderModel) then) =
      _$ParkingOrderModelCopyWithImpl<$Res, ParkingOrderModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) VehicleModel vehicle,
      @HiveField(2) DateTime entryDate,
      @HiveField(3) DateTime? departureDate});

  $VehicleModelCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$ParkingOrderModelCopyWithImpl<$Res, $Val extends ParkingOrderModel>
    implements $ParkingOrderModelCopyWith<$Res> {
  _$ParkingOrderModelCopyWithImpl(this._value, this._then);

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
              as VehicleModel,
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
  $VehicleModelCopyWith<$Res> get vehicle {
    return $VehicleModelCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParkingOrderModelImplCopyWith<$Res>
    implements $ParkingOrderModelCopyWith<$Res> {
  factory _$$ParkingOrderModelImplCopyWith(_$ParkingOrderModelImpl value,
          $Res Function(_$ParkingOrderModelImpl) then) =
      __$$ParkingOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) VehicleModel vehicle,
      @HiveField(2) DateTime entryDate,
      @HiveField(3) DateTime? departureDate});

  @override
  $VehicleModelCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$ParkingOrderModelImplCopyWithImpl<$Res>
    extends _$ParkingOrderModelCopyWithImpl<$Res, _$ParkingOrderModelImpl>
    implements _$$ParkingOrderModelImplCopyWith<$Res> {
  __$$ParkingOrderModelImplCopyWithImpl(_$ParkingOrderModelImpl _value,
      $Res Function(_$ParkingOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vehicle = null,
    Object? entryDate = null,
    Object? departureDate = freezed,
  }) {
    return _then(_$ParkingOrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleModel,
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
@JsonSerializable()
@HiveType(
    typeId: kParkingOrderModelAdapterTypeId,
    adapterName: kParkingOrderModelAdapterName)
class _$ParkingOrderModelImpl extends _ParkingOrderModel {
  const _$ParkingOrderModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.vehicle,
      @HiveField(2) required this.entryDate,
      @HiveField(3) this.departureDate})
      : super._();

  factory _$ParkingOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParkingOrderModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final VehicleModel vehicle;
  @override
  @HiveField(2)
  final DateTime entryDate;
  @override
  @HiveField(3)
  final DateTime? departureDate;

  @override
  String toString() {
    return 'ParkingOrderModel(id: $id, vehicle: $vehicle, entryDate: $entryDate, departureDate: $departureDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.entryDate, entryDate) ||
                other.entryDate == entryDate) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, vehicle, entryDate, departureDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingOrderModelImplCopyWith<_$ParkingOrderModelImpl> get copyWith =>
      __$$ParkingOrderModelImplCopyWithImpl<_$ParkingOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParkingOrderModelImplToJson(
      this,
    );
  }
}

abstract class _ParkingOrderModel extends ParkingOrderModel {
  const factory _ParkingOrderModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final VehicleModel vehicle,
      @HiveField(2) required final DateTime entryDate,
      @HiveField(3) final DateTime? departureDate}) = _$ParkingOrderModelImpl;
  const _ParkingOrderModel._() : super._();

  factory _ParkingOrderModel.fromJson(Map<String, dynamic> json) =
      _$ParkingOrderModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  VehicleModel get vehicle;
  @override
  @HiveField(2)
  DateTime get entryDate;
  @override
  @HiveField(3)
  DateTime? get departureDate;
  @override
  @JsonKey(ignore: true)
  _$$ParkingOrderModelImplCopyWith<_$ParkingOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
