// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_parking_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllParkingViewModelState {}

/// @nodoc
abstract class $AllParkingViewModelStateCopyWith<$Res> {
  factory $AllParkingViewModelStateCopyWith(AllParkingViewModelState value,
          $Res Function(AllParkingViewModelState) then) =
      _$AllParkingViewModelStateCopyWithImpl<$Res, AllParkingViewModelState>;
}

/// @nodoc
class _$AllParkingViewModelStateCopyWithImpl<$Res,
        $Val extends AllParkingViewModelState>
    implements $AllParkingViewModelStateCopyWith<$Res> {
  _$AllParkingViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingAllParkingViewModelStateImplCopyWith<$Res> {
  factory _$$LoadingAllParkingViewModelStateImplCopyWith(
          _$LoadingAllParkingViewModelStateImpl value,
          $Res Function(_$LoadingAllParkingViewModelStateImpl) then) =
      __$$LoadingAllParkingViewModelStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAllParkingViewModelStateImplCopyWithImpl<$Res>
    extends _$AllParkingViewModelStateCopyWithImpl<$Res,
        _$LoadingAllParkingViewModelStateImpl>
    implements _$$LoadingAllParkingViewModelStateImplCopyWith<$Res> {
  __$$LoadingAllParkingViewModelStateImplCopyWithImpl(
      _$LoadingAllParkingViewModelStateImpl _value,
      $Res Function(_$LoadingAllParkingViewModelStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAllParkingViewModelStateImpl
    implements LoadingAllParkingViewModelState {
  const _$LoadingAllParkingViewModelStateImpl();

  @override
  String toString() {
    return 'AllParkingViewModelState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAllParkingViewModelStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LoadingAllParkingViewModelState
    implements AllParkingViewModelState {
  const factory LoadingAllParkingViewModelState() =
      _$LoadingAllParkingViewModelStateImpl;
}

/// @nodoc
abstract class _$$LoadedAllParkingViewModelStateImplCopyWith<$Res> {
  factory _$$LoadedAllParkingViewModelStateImplCopyWith(
          _$LoadedAllParkingViewModelStateImpl value,
          $Res Function(_$LoadedAllParkingViewModelStateImpl) then) =
      __$$LoadedAllParkingViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Parking> parking});
}

/// @nodoc
class __$$LoadedAllParkingViewModelStateImplCopyWithImpl<$Res>
    extends _$AllParkingViewModelStateCopyWithImpl<$Res,
        _$LoadedAllParkingViewModelStateImpl>
    implements _$$LoadedAllParkingViewModelStateImplCopyWith<$Res> {
  __$$LoadedAllParkingViewModelStateImplCopyWithImpl(
      _$LoadedAllParkingViewModelStateImpl _value,
      $Res Function(_$LoadedAllParkingViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parking = null,
  }) {
    return _then(_$LoadedAllParkingViewModelStateImpl(
      parking: null == parking
          ? _value._parking
          : parking // ignore: cast_nullable_to_non_nullable
              as List<Parking>,
    ));
  }
}

/// @nodoc

class _$LoadedAllParkingViewModelStateImpl
    implements LoadedAllParkingViewModelState {
  const _$LoadedAllParkingViewModelStateImpl(
      {final List<Parking> parking = const []})
      : _parking = parking;

  final List<Parking> _parking;
  @override
  @JsonKey()
  List<Parking> get parking {
    if (_parking is EqualUnmodifiableListView) return _parking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parking);
  }

  @override
  String toString() {
    return 'AllParkingViewModelState.loaded(parking: $parking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAllParkingViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._parking, _parking));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAllParkingViewModelStateImplCopyWith<
          _$LoadedAllParkingViewModelStateImpl>
      get copyWith => __$$LoadedAllParkingViewModelStateImplCopyWithImpl<
          _$LoadedAllParkingViewModelStateImpl>(this, _$identity);
}

abstract class LoadedAllParkingViewModelState
    implements AllParkingViewModelState {
  const factory LoadedAllParkingViewModelState({final List<Parking> parking}) =
      _$LoadedAllParkingViewModelStateImpl;

  List<Parking> get parking;
  @JsonKey(ignore: true)
  _$$LoadedAllParkingViewModelStateImplCopyWith<
          _$LoadedAllParkingViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAllParkingViewModelStateImplCopyWith<$Res> {
  factory _$$ErrorAllParkingViewModelStateImplCopyWith(
          _$ErrorAllParkingViewModelStateImpl value,
          $Res Function(_$ErrorAllParkingViewModelStateImpl) then) =
      __$$ErrorAllParkingViewModelStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorAllParkingViewModelStateImplCopyWithImpl<$Res>
    extends _$AllParkingViewModelStateCopyWithImpl<$Res,
        _$ErrorAllParkingViewModelStateImpl>
    implements _$$ErrorAllParkingViewModelStateImplCopyWith<$Res> {
  __$$ErrorAllParkingViewModelStateImplCopyWithImpl(
      _$ErrorAllParkingViewModelStateImpl _value,
      $Res Function(_$ErrorAllParkingViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorAllParkingViewModelStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorAllParkingViewModelStateImpl
    implements ErrorAllParkingViewModelState {
  const _$ErrorAllParkingViewModelStateImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AllParkingViewModelState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAllParkingViewModelStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAllParkingViewModelStateImplCopyWith<
          _$ErrorAllParkingViewModelStateImpl>
      get copyWith => __$$ErrorAllParkingViewModelStateImplCopyWithImpl<
          _$ErrorAllParkingViewModelStateImpl>(this, _$identity);
}

abstract class ErrorAllParkingViewModelState
    implements AllParkingViewModelState {
  const factory ErrorAllParkingViewModelState([final String? message]) =
      _$ErrorAllParkingViewModelStateImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorAllParkingViewModelStateImplCopyWith<
          _$ErrorAllParkingViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
