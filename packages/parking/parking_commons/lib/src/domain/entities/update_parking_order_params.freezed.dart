// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_parking_order_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateParkingOrderParams {
  DateTime get departureDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateParkingOrderParamsCopyWith<UpdateParkingOrderParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateParkingOrderParamsCopyWith<$Res> {
  factory $UpdateParkingOrderParamsCopyWith(UpdateParkingOrderParams value,
          $Res Function(UpdateParkingOrderParams) then) =
      _$UpdateParkingOrderParamsCopyWithImpl<$Res, UpdateParkingOrderParams>;
  @useResult
  $Res call({DateTime departureDate});
}

/// @nodoc
class _$UpdateParkingOrderParamsCopyWithImpl<$Res,
        $Val extends UpdateParkingOrderParams>
    implements $UpdateParkingOrderParamsCopyWith<$Res> {
  _$UpdateParkingOrderParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateParkingOrderParamsImplCopyWith<$Res>
    implements $UpdateParkingOrderParamsCopyWith<$Res> {
  factory _$$UpdateParkingOrderParamsImplCopyWith(
          _$UpdateParkingOrderParamsImpl value,
          $Res Function(_$UpdateParkingOrderParamsImpl) then) =
      __$$UpdateParkingOrderParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime departureDate});
}

/// @nodoc
class __$$UpdateParkingOrderParamsImplCopyWithImpl<$Res>
    extends _$UpdateParkingOrderParamsCopyWithImpl<$Res,
        _$UpdateParkingOrderParamsImpl>
    implements _$$UpdateParkingOrderParamsImplCopyWith<$Res> {
  __$$UpdateParkingOrderParamsImplCopyWithImpl(
      _$UpdateParkingOrderParamsImpl _value,
      $Res Function(_$UpdateParkingOrderParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDate = null,
  }) {
    return _then(_$UpdateParkingOrderParamsImpl(
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateParkingOrderParamsImpl implements _UpdateParkingOrderParams {
  const _$UpdateParkingOrderParamsImpl({required this.departureDate});

  @override
  final DateTime departureDate;

  @override
  String toString() {
    return 'UpdateParkingOrderParams(departureDate: $departureDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateParkingOrderParamsImpl &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departureDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateParkingOrderParamsImplCopyWith<_$UpdateParkingOrderParamsImpl>
      get copyWith => __$$UpdateParkingOrderParamsImplCopyWithImpl<
          _$UpdateParkingOrderParamsImpl>(this, _$identity);
}

abstract class _UpdateParkingOrderParams implements UpdateParkingOrderParams {
  const factory _UpdateParkingOrderParams(
      {required final DateTime departureDate}) = _$UpdateParkingOrderParamsImpl;

  @override
  DateTime get departureDate;
  @override
  @JsonKey(ignore: true)
  _$$UpdateParkingOrderParamsImplCopyWith<_$UpdateParkingOrderParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
