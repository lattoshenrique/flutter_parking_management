// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_parking_order_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateParkingOrderParamsModel _$UpdateParkingOrderParamsModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateParkingOrderParamsModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateParkingOrderParamsModel {
  DateTime get departureDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateParkingOrderParamsModelCopyWith<UpdateParkingOrderParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateParkingOrderParamsModelCopyWith<$Res> {
  factory $UpdateParkingOrderParamsModelCopyWith(
          UpdateParkingOrderParamsModel value,
          $Res Function(UpdateParkingOrderParamsModel) then) =
      _$UpdateParkingOrderParamsModelCopyWithImpl<$Res,
          UpdateParkingOrderParamsModel>;
  @useResult
  $Res call({DateTime departureDate});
}

/// @nodoc
class _$UpdateParkingOrderParamsModelCopyWithImpl<$Res,
        $Val extends UpdateParkingOrderParamsModel>
    implements $UpdateParkingOrderParamsModelCopyWith<$Res> {
  _$UpdateParkingOrderParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDate = null,
  }) {
    return _then(_value.copyWith(
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateParkingOrderParamsModelImplCopyWith<$Res>
    implements $UpdateParkingOrderParamsModelCopyWith<$Res> {
  factory _$$UpdateParkingOrderParamsModelImplCopyWith(
          _$UpdateParkingOrderParamsModelImpl value,
          $Res Function(_$UpdateParkingOrderParamsModelImpl) then) =
      __$$UpdateParkingOrderParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime departureDate});
}

/// @nodoc
class __$$UpdateParkingOrderParamsModelImplCopyWithImpl<$Res>
    extends _$UpdateParkingOrderParamsModelCopyWithImpl<$Res,
        _$UpdateParkingOrderParamsModelImpl>
    implements _$$UpdateParkingOrderParamsModelImplCopyWith<$Res> {
  __$$UpdateParkingOrderParamsModelImplCopyWithImpl(
      _$UpdateParkingOrderParamsModelImpl _value,
      $Res Function(_$UpdateParkingOrderParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDate = null,
  }) {
    return _then(_$UpdateParkingOrderParamsModelImpl(
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateParkingOrderParamsModelImpl
    extends _UpdateParkingOrderParamsModel {
  const _$UpdateParkingOrderParamsModelImpl({required this.departureDate})
      : super._();

  factory _$UpdateParkingOrderParamsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateParkingOrderParamsModelImplFromJson(json);

  @override
  final DateTime departureDate;

  @override
  String toString() {
    return 'UpdateParkingOrderParamsModel(departureDate: $departureDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateParkingOrderParamsModelImpl &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, departureDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateParkingOrderParamsModelImplCopyWith<
          _$UpdateParkingOrderParamsModelImpl>
      get copyWith => __$$UpdateParkingOrderParamsModelImplCopyWithImpl<
          _$UpdateParkingOrderParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateParkingOrderParamsModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateParkingOrderParamsModel
    extends UpdateParkingOrderParamsModel {
  const factory _UpdateParkingOrderParamsModel(
          {required final DateTime departureDate}) =
      _$UpdateParkingOrderParamsModelImpl;
  const _UpdateParkingOrderParamsModel._() : super._();

  factory _UpdateParkingOrderParamsModel.fromJson(Map<String, dynamic> json) =
      _$UpdateParkingOrderParamsModelImpl.fromJson;

  @override
  DateTime get departureDate;
  @override
  @JsonKey(ignore: true)
  _$$UpdateParkingOrderParamsModelImplCopyWith<
          _$UpdateParkingOrderParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
