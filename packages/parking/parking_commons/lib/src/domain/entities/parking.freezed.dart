// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Parking {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingCopyWith<Parking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingCopyWith<$Res> {
  factory $ParkingCopyWith(Parking value, $Res Function(Parking) then) =
      _$ParkingCopyWithImpl<$Res, Parking>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ParkingCopyWithImpl<$Res, $Val extends Parking>
    implements $ParkingCopyWith<$Res> {
  _$ParkingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParkingImplCopyWith<$Res> implements $ParkingCopyWith<$Res> {
  factory _$$ParkingImplCopyWith(
          _$ParkingImpl value, $Res Function(_$ParkingImpl) then) =
      __$$ParkingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ParkingImplCopyWithImpl<$Res>
    extends _$ParkingCopyWithImpl<$Res, _$ParkingImpl>
    implements _$$ParkingImplCopyWith<$Res> {
  __$$ParkingImplCopyWithImpl(
      _$ParkingImpl _value, $Res Function(_$ParkingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ParkingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParkingImpl implements _Parking {
  const _$ParkingImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Parking(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingImplCopyWith<_$ParkingImpl> get copyWith =>
      __$$ParkingImplCopyWithImpl<_$ParkingImpl>(this, _$identity);
}

abstract class _Parking implements Parking {
  const factory _Parking(
      {required final String id, required final String name}) = _$ParkingImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ParkingImplCopyWith<_$ParkingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
