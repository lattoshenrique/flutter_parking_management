// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_view_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParkingViewViewModelState {}

/// @nodoc
abstract class $ParkingViewViewModelStateCopyWith<$Res> {
  factory $ParkingViewViewModelStateCopyWith(ParkingViewViewModelState value,
          $Res Function(ParkingViewViewModelState) then) =
      _$ParkingViewViewModelStateCopyWithImpl<$Res, ParkingViewViewModelState>;
}

/// @nodoc
class _$ParkingViewViewModelStateCopyWithImpl<$Res,
        $Val extends ParkingViewViewModelState>
    implements $ParkingViewViewModelStateCopyWith<$Res> {
  _$ParkingViewViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleParkingViewViewModelStateImplCopyWith<$Res> {
  factory _$$IdleParkingViewViewModelStateImplCopyWith(
          _$IdleParkingViewViewModelStateImpl value,
          $Res Function(_$IdleParkingViewViewModelStateImpl) then) =
      __$$IdleParkingViewViewModelStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleParkingViewViewModelStateImplCopyWithImpl<$Res>
    extends _$ParkingViewViewModelStateCopyWithImpl<$Res,
        _$IdleParkingViewViewModelStateImpl>
    implements _$$IdleParkingViewViewModelStateImplCopyWith<$Res> {
  __$$IdleParkingViewViewModelStateImplCopyWithImpl(
      _$IdleParkingViewViewModelStateImpl _value,
      $Res Function(_$IdleParkingViewViewModelStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleParkingViewViewModelStateImpl
    implements IdleParkingViewViewModelState {
  const _$IdleParkingViewViewModelStateImpl();

  @override
  String toString() {
    return 'ParkingViewViewModelState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleParkingViewViewModelStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class IdleParkingViewViewModelState
    implements ParkingViewViewModelState {
  const factory IdleParkingViewViewModelState() =
      _$IdleParkingViewViewModelStateImpl;
}

/// @nodoc
abstract class _$$LoadingParkingViewViewModelStateImplCopyWith<$Res> {
  factory _$$LoadingParkingViewViewModelStateImplCopyWith(
          _$LoadingParkingViewViewModelStateImpl value,
          $Res Function(_$LoadingParkingViewViewModelStateImpl) then) =
      __$$LoadingParkingViewViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Parking parking});

  $ParkingCopyWith<$Res> get parking;
}

/// @nodoc
class __$$LoadingParkingViewViewModelStateImplCopyWithImpl<$Res>
    extends _$ParkingViewViewModelStateCopyWithImpl<$Res,
        _$LoadingParkingViewViewModelStateImpl>
    implements _$$LoadingParkingViewViewModelStateImplCopyWith<$Res> {
  __$$LoadingParkingViewViewModelStateImplCopyWithImpl(
      _$LoadingParkingViewViewModelStateImpl _value,
      $Res Function(_$LoadingParkingViewViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parking = null,
  }) {
    return _then(_$LoadingParkingViewViewModelStateImpl(
      null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as Parking,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParkingCopyWith<$Res> get parking {
    return $ParkingCopyWith<$Res>(_value.parking, (value) {
      return _then(_value.copyWith(parking: value));
    });
  }
}

/// @nodoc

class _$LoadingParkingViewViewModelStateImpl
    implements LoadingParkingViewViewModelState {
  const _$LoadingParkingViewViewModelStateImpl(this.parking);

  @override
  final Parking parking;

  @override
  String toString() {
    return 'ParkingViewViewModelState.loading(parking: $parking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingParkingViewViewModelStateImpl &&
            (identical(other.parking, parking) || other.parking == parking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingParkingViewViewModelStateImplCopyWith<
          _$LoadingParkingViewViewModelStateImpl>
      get copyWith => __$$LoadingParkingViewViewModelStateImplCopyWithImpl<
          _$LoadingParkingViewViewModelStateImpl>(this, _$identity);
}

abstract class LoadingParkingViewViewModelState
    implements ParkingViewViewModelState {
  const factory LoadingParkingViewViewModelState(final Parking parking) =
      _$LoadingParkingViewViewModelStateImpl;

  Parking get parking;
  @JsonKey(ignore: true)
  _$$LoadingParkingViewViewModelStateImplCopyWith<
          _$LoadingParkingViewViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessParkingViewViewModelStateImplCopyWith<$Res> {
  factory _$$SuccessParkingViewViewModelStateImplCopyWith(
          _$SuccessParkingViewViewModelStateImpl value,
          $Res Function(_$SuccessParkingViewViewModelStateImpl) then) =
      __$$SuccessParkingViewViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Parking parking, List<Vehicle> vehicles});

  $ParkingCopyWith<$Res> get parking;
}

/// @nodoc
class __$$SuccessParkingViewViewModelStateImplCopyWithImpl<$Res>
    extends _$ParkingViewViewModelStateCopyWithImpl<$Res,
        _$SuccessParkingViewViewModelStateImpl>
    implements _$$SuccessParkingViewViewModelStateImplCopyWith<$Res> {
  __$$SuccessParkingViewViewModelStateImplCopyWithImpl(
      _$SuccessParkingViewViewModelStateImpl _value,
      $Res Function(_$SuccessParkingViewViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parking = null,
    Object? vehicles = null,
  }) {
    return _then(_$SuccessParkingViewViewModelStateImpl(
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as Parking,
      vehicles: null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParkingCopyWith<$Res> get parking {
    return $ParkingCopyWith<$Res>(_value.parking, (value) {
      return _then(_value.copyWith(parking: value));
    });
  }
}

/// @nodoc

class _$SuccessParkingViewViewModelStateImpl
    implements SuccessParkingViewViewModelState {
  const _$SuccessParkingViewViewModelStateImpl(
      {required this.parking, final List<Vehicle> vehicles = const []})
      : _vehicles = vehicles;

  @override
  final Parking parking;
  final List<Vehicle> _vehicles;
  @override
  @JsonKey()
  List<Vehicle> get vehicles {
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicles);
  }

  @override
  String toString() {
    return 'ParkingViewViewModelState.success(parking: $parking, vehicles: $vehicles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessParkingViewViewModelStateImpl &&
            (identical(other.parking, parking) || other.parking == parking) &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, parking, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessParkingViewViewModelStateImplCopyWith<
          _$SuccessParkingViewViewModelStateImpl>
      get copyWith => __$$SuccessParkingViewViewModelStateImplCopyWithImpl<
          _$SuccessParkingViewViewModelStateImpl>(this, _$identity);
}

abstract class SuccessParkingViewViewModelState
    implements ParkingViewViewModelState {
  const factory SuccessParkingViewViewModelState(
      {required final Parking parking,
      final List<Vehicle> vehicles}) = _$SuccessParkingViewViewModelStateImpl;

  Parking get parking;
  List<Vehicle> get vehicles;
  @JsonKey(ignore: true)
  _$$SuccessParkingViewViewModelStateImplCopyWith<
          _$SuccessParkingViewViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorParkingViewViewModelStateImplCopyWith<$Res> {
  factory _$$ErrorParkingViewViewModelStateImplCopyWith(
          _$ErrorParkingViewViewModelStateImpl value,
          $Res Function(_$ErrorParkingViewViewModelStateImpl) then) =
      __$$ErrorParkingViewViewModelStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorParkingViewViewModelStateImplCopyWithImpl<$Res>
    extends _$ParkingViewViewModelStateCopyWithImpl<$Res,
        _$ErrorParkingViewViewModelStateImpl>
    implements _$$ErrorParkingViewViewModelStateImplCopyWith<$Res> {
  __$$ErrorParkingViewViewModelStateImplCopyWithImpl(
      _$ErrorParkingViewViewModelStateImpl _value,
      $Res Function(_$ErrorParkingViewViewModelStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorParkingViewViewModelStateImpl
    implements ErrorParkingViewViewModelState {
  const _$ErrorParkingViewViewModelStateImpl();

  @override
  String toString() {
    return 'ParkingViewViewModelState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorParkingViewViewModelStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ErrorParkingViewViewModelState
    implements ParkingViewViewModelState {
  const factory ErrorParkingViewViewModelState() =
      _$ErrorParkingViewViewModelStateImpl;
}
