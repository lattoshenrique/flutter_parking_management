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
abstract class _$$LoadingAllErrorVehicleListViewModelStateImplCopyWith<$Res> {
  factory _$$LoadingAllErrorVehicleListViewModelStateImplCopyWith(
          _$LoadingAllErrorVehicleListViewModelStateImpl value,
          $Res Function(_$LoadingAllErrorVehicleListViewModelStateImpl) then) =
      __$$LoadingAllErrorVehicleListViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadingAllErrorVehicleListViewModelStateImplCopyWithImpl<$Res>
    extends _$VehicleListViewModelStateCopyWithImpl<$Res,
        _$LoadingAllErrorVehicleListViewModelStateImpl>
    implements _$$LoadingAllErrorVehicleListViewModelStateImplCopyWith<$Res> {
  __$$LoadingAllErrorVehicleListViewModelStateImplCopyWithImpl(
      _$LoadingAllErrorVehicleListViewModelStateImpl _value,
      $Res Function(_$LoadingAllErrorVehicleListViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadingAllErrorVehicleListViewModelStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingAllErrorVehicleListViewModelStateImpl
    implements LoadingAllErrorVehicleListViewModelState {
  const _$LoadingAllErrorVehicleListViewModelStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VehicleListViewModelState.loadingAllError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAllErrorVehicleListViewModelStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingAllErrorVehicleListViewModelStateImplCopyWith<
          _$LoadingAllErrorVehicleListViewModelStateImpl>
      get copyWith =>
          __$$LoadingAllErrorVehicleListViewModelStateImplCopyWithImpl<
              _$LoadingAllErrorVehicleListViewModelStateImpl>(this, _$identity);
}

abstract class LoadingAllErrorVehicleListViewModelState
    implements VehicleListViewModelState {
  const factory LoadingAllErrorVehicleListViewModelState(final String message) =
      _$LoadingAllErrorVehicleListViewModelStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadingAllErrorVehicleListViewModelStateImplCopyWith<
          _$LoadingAllErrorVehicleListViewModelStateImpl>
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

/// @nodoc
abstract class _$$LoadingDeleteVehicleListViewModelStateImplCopyWith<$Res> {
  factory _$$LoadingDeleteVehicleListViewModelStateImplCopyWith(
          _$LoadingDeleteVehicleListViewModelStateImpl value,
          $Res Function(_$LoadingDeleteVehicleListViewModelStateImpl) then) =
      __$$LoadingDeleteVehicleListViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Vehicle> vehicles, int index});
}

/// @nodoc
class __$$LoadingDeleteVehicleListViewModelStateImplCopyWithImpl<$Res>
    extends _$VehicleListViewModelStateCopyWithImpl<$Res,
        _$LoadingDeleteVehicleListViewModelStateImpl>
    implements _$$LoadingDeleteVehicleListViewModelStateImplCopyWith<$Res> {
  __$$LoadingDeleteVehicleListViewModelStateImplCopyWithImpl(
      _$LoadingDeleteVehicleListViewModelStateImpl _value,
      $Res Function(_$LoadingDeleteVehicleListViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
    Object? index = null,
  }) {
    return _then(_$LoadingDeleteVehicleListViewModelStateImpl(
      vehicles: null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadingDeleteVehicleListViewModelStateImpl
    implements LoadingDeleteVehicleListViewModelState {
  const _$LoadingDeleteVehicleListViewModelStateImpl(
      {required final List<Vehicle> vehicles, required this.index})
      : _vehicles = vehicles;

  final List<Vehicle> _vehicles;
  @override
  List<Vehicle> get vehicles {
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicles);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'VehicleListViewModelState.loadingDelete(vehicles: $vehicles, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDeleteVehicleListViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vehicles), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDeleteVehicleListViewModelStateImplCopyWith<
          _$LoadingDeleteVehicleListViewModelStateImpl>
      get copyWith =>
          __$$LoadingDeleteVehicleListViewModelStateImplCopyWithImpl<
              _$LoadingDeleteVehicleListViewModelStateImpl>(this, _$identity);
}

abstract class LoadingDeleteVehicleListViewModelState
    implements VehicleListViewModelState {
  const factory LoadingDeleteVehicleListViewModelState(
      {required final List<Vehicle> vehicles,
      required final int index}) = _$LoadingDeleteVehicleListViewModelStateImpl;

  List<Vehicle> get vehicles;
  int get index;
  @JsonKey(ignore: true)
  _$$LoadingDeleteVehicleListViewModelStateImplCopyWith<
          _$LoadingDeleteVehicleListViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWith<
    $Res> {
  factory _$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWith(
          _$LoadingDeleteErrorVehicleListViewModelStateImpl value,
          $Res Function(_$LoadingDeleteErrorVehicleListViewModelStateImpl)
              then) =
      __$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, List<Vehicle> vehicles});
}

/// @nodoc
class __$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWithImpl<$Res>
    extends _$VehicleListViewModelStateCopyWithImpl<$Res,
        _$LoadingDeleteErrorVehicleListViewModelStateImpl>
    implements
        _$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWith<$Res> {
  __$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWithImpl(
      _$LoadingDeleteErrorVehicleListViewModelStateImpl _value,
      $Res Function(_$LoadingDeleteErrorVehicleListViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? vehicles = null,
  }) {
    return _then(_$LoadingDeleteErrorVehicleListViewModelStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      vehicles: null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ));
  }
}

/// @nodoc

class _$LoadingDeleteErrorVehicleListViewModelStateImpl
    implements LoadingDeleteErrorVehicleListViewModelState {
  const _$LoadingDeleteErrorVehicleListViewModelStateImpl(
      {required this.message, required final List<Vehicle> vehicles})
      : _vehicles = vehicles;

  @override
  final String message;
  final List<Vehicle> _vehicles;
  @override
  List<Vehicle> get vehicles {
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicles);
  }

  @override
  String toString() {
    return 'VehicleListViewModelState.loadingDeleteError(message: $message, vehicles: $vehicles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDeleteErrorVehicleListViewModelStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWith<
          _$LoadingDeleteErrorVehicleListViewModelStateImpl>
      get copyWith =>
          __$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWithImpl<
                  _$LoadingDeleteErrorVehicleListViewModelStateImpl>(
              this, _$identity);
}

abstract class LoadingDeleteErrorVehicleListViewModelState
    implements VehicleListViewModelState {
  const factory LoadingDeleteErrorVehicleListViewModelState(
          {required final String message,
          required final List<Vehicle> vehicles}) =
      _$LoadingDeleteErrorVehicleListViewModelStateImpl;

  String get message;
  List<Vehicle> get vehicles;
  @JsonKey(ignore: true)
  _$$LoadingDeleteErrorVehicleListViewModelStateImplCopyWith<
          _$LoadingDeleteErrorVehicleListViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
