// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParkingModel _$ParkingModelFromJson(Map<String, dynamic> json) {
  return _ParkingModel.fromJson(json);
}

/// @nodoc
mixin _$ParkingModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<ParkingOrderModel> get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingModelCopyWith<ParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingModelCopyWith<$Res> {
  factory $ParkingModelCopyWith(
          ParkingModel value, $Res Function(ParkingModel) then) =
      _$ParkingModelCopyWithImpl<$Res, ParkingModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<ParkingOrderModel> orders});
}

/// @nodoc
class _$ParkingModelCopyWithImpl<$Res, $Val extends ParkingModel>
    implements $ParkingModelCopyWith<$Res> {
  _$ParkingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<ParkingOrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParkingModelImplCopyWith<$Res>
    implements $ParkingModelCopyWith<$Res> {
  factory _$$ParkingModelImplCopyWith(
          _$ParkingModelImpl value, $Res Function(_$ParkingModelImpl) then) =
      __$$ParkingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<ParkingOrderModel> orders});
}

/// @nodoc
class __$$ParkingModelImplCopyWithImpl<$Res>
    extends _$ParkingModelCopyWithImpl<$Res, _$ParkingModelImpl>
    implements _$$ParkingModelImplCopyWith<$Res> {
  __$$ParkingModelImplCopyWithImpl(
      _$ParkingModelImpl _value, $Res Function(_$ParkingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? orders = null,
  }) {
    return _then(_$ParkingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<ParkingOrderModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: kParkingModelAdapterTypeId, adapterName: kParkingModelAdapterName)
class _$ParkingModelImpl extends _ParkingModel {
  const _$ParkingModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) final List<ParkingOrderModel> orders = const []})
      : _orders = orders,
        super._();

  factory _$ParkingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParkingModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  final List<ParkingOrderModel> _orders;
  @override
  @JsonKey()
  @HiveField(2)
  List<ParkingOrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'ParkingModel(id: $id, name: $name, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingModelImplCopyWith<_$ParkingModelImpl> get copyWith =>
      __$$ParkingModelImplCopyWithImpl<_$ParkingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParkingModelImplToJson(
      this,
    );
  }
}

abstract class _ParkingModel extends ParkingModel {
  const factory _ParkingModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) final List<ParkingOrderModel> orders}) = _$ParkingModelImpl;
  const _ParkingModel._() : super._();

  factory _ParkingModel.fromJson(Map<String, dynamic> json) =
      _$ParkingModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  List<ParkingOrderModel> get orders;
  @override
  @JsonKey(ignore: true)
  _$$ParkingModelImplCopyWith<_$ParkingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
