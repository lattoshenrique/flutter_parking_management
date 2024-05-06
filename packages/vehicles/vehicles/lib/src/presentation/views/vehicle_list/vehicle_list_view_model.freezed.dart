// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleListViewModelState {}

/// @nodoc
abstract class $VehicleListViewModelStateCopyWith<$Res> {
  factory $VehicleListViewModelStateCopyWith(VehicleListViewModelState value,
          $Res Function(VehicleListViewModelState) then) =
      _$VehicleListViewModelStateCopyWithImpl<$Res, VehicleListViewModelState>;
}

/// @nodoc
class _$VehicleListViewModelStateCopyWithImpl<$Res,
        $Val extends VehicleListViewModelState>
    implements $VehicleListViewModelStateCopyWith<$Res> {
  _$VehicleListViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingVehicleListViewModelStateImplCopyWith<$Res> {
  factory _$$LoadingVehicleListViewModelStateImplCopyWith(
          _$LoadingVehicleListViewModelStateImpl value,
          $Res Function(_$LoadingVehicleListViewModelStateImpl) then) =
      __$$LoadingVehicleListViewModelStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingVehicleListViewModelStateImplCopyWithImpl<$Res>
    extends _$VehicleListViewModelStateCopyWithImpl<$Res,
        _$LoadingVehicleListViewModelStateImpl>
    implements _$$LoadingVehicleListViewModelStateImplCopyWith<$Res> {
  __$$LoadingVehicleListViewModelStateImplCopyWithImpl(
      _$LoadingVehicleListViewModelStateImpl _value,
      $Res Function(_$LoadingVehicleListViewModelStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingVehicleListViewModelStateImpl
    implements LoadingVehicleListViewModelState {
  const _$LoadingVehicleListViewModelStateImpl();

  @override
  String toString() {
    return 'VehicleListViewModelState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVehicleListViewModelStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LoadingVehicleListViewModelState
    implements VehicleListViewModelState {
  const factory LoadingVehicleListViewModelState() =
      _$LoadingVehicleListViewModelStateImpl;
}

/// @nodoc
abstract class _$$ErrorVehicleListViewModelStateImplCopyWith<$Res> {
  factory _$$ErrorVehicleListViewModelStateImplCopyWith(
          _$ErrorVehicleListViewModelStateImpl value,
          $Res Function(_$ErrorVehicleListViewModelStateImpl) then) =
      __$$ErrorVehicleListViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorVehicleListViewModelStateImplCopyWithImpl<$Res>
    extends _$VehicleListViewModelStateCopyWithImpl<$Res,
        _$ErrorVehicleListViewModelStateImpl>
    implements _$$ErrorVehicleListViewModelStateImplCopyWith<$Res> {
  __$$ErrorVehicleListViewModelStateImplCopyWithImpl(
      _$ErrorVehicleListViewModelStateImpl _value,
      $Res Function(_$ErrorVehicleListViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorVehicleListViewModelStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorVehicleListViewModelStateImpl
    implements ErrorVehicleListViewModelState {
  const _$ErrorVehicleListViewModelStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VehicleListViewModelState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorVehicleListViewModelStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorVehicleListViewModelStateImplCopyWith<
          _$ErrorVehicleListViewModelStateImpl>
      get copyWith => __$$ErrorVehicleListViewModelStateImplCopyWithImpl<
          _$ErrorVehicleListViewModelStateImpl>(this, _$identity);
}

abstract class ErrorVehicleListViewModelState
    implements VehicleListViewModelState {
  const factory ErrorVehicleListViewModelState(final String message) =
      _$ErrorVehicleListViewModelStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorVehicleListViewModelStateImplCopyWith<
          _$ErrorVehicleListViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedVehicleListViewModelStateImplCopyWith<$Res> {
  factory _$$LoadedVehicleListViewModelStateImplCopyWith(
          _$LoadedVehicleListViewModelStateImpl value,
          $Res Function(_$LoadedVehicleListViewModelStateImpl) then) =
      __$$LoadedVehicleListViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Vehicle> vehicles});
}

/// @nodoc
class __$$LoadedVehicleListViewModelStateImplCopyWithImpl<$Res>
    extends _$VehicleListViewModelStateCopyWithImpl<$Res,
        _$LoadedVehicleListViewModelStateImpl>
    implements _$$LoadedVehicleListViewModelStateImplCopyWith<$Res> {
  __$$LoadedVehicleListViewModelStateImplCopyWithImpl(
      _$LoadedVehicleListViewModelStateImpl _value,
      $Res Function(_$LoadedVehicleListViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
  }) {
    return _then(_$LoadedVehicleListViewModelStateImpl(
      vehicles: null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ));
  }
}

/// @nodoc

class _$LoadedVehicleListViewModelStateImpl
    implements LoadedVehicleListViewModelState {
  const _$LoadedVehicleListViewModelStateImpl(
      {final List<Vehicle> vehicles = const []})
      : _vehicles = vehicles;

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
    return 'VehicleListViewModelState.loaded(vehicles: $vehicles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedVehicleListViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedVehicleListViewModelStateImplCopyWith<
          _$LoadedVehicleListViewModelStateImpl>
      get copyWith => __$$LoadedVehicleListViewModelStateImplCopyWithImpl<
          _$LoadedVehicleListViewModelStateImpl>(this, _$identity);
}

abstract class LoadedVehicleListViewModelState
    implements VehicleListViewModelState {
  const factory LoadedVehicleListViewModelState(
      {final List<Vehicle> vehicles}) = _$LoadedVehicleListViewModelStateImpl;

  List<Vehicle> get vehicles;
  @JsonKey(ignore: true)
  _$$LoadedVehicleListViewModelStateImplCopyWith<
          _$LoadedVehicleListViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
