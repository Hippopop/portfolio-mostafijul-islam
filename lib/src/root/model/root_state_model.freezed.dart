// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RootStateModel {
  RootState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateModelCopyWith<RootStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateModelCopyWith<$Res> {
  factory $RootStateModelCopyWith(
          RootStateModel value, $Res Function(RootStateModel) then) =
      _$RootStateModelCopyWithImpl<$Res, RootStateModel>;
  @useResult
  $Res call({RootState state});
}

/// @nodoc
class _$RootStateModelCopyWithImpl<$Res, $Val extends RootStateModel>
    implements $RootStateModelCopyWith<$Res> {
  _$RootStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RootState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RootStateModelImplCopyWith<$Res>
    implements $RootStateModelCopyWith<$Res> {
  factory _$$RootStateModelImplCopyWith(_$RootStateModelImpl value,
          $Res Function(_$RootStateModelImpl) then) =
      __$$RootStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RootState state});
}

/// @nodoc
class __$$RootStateModelImplCopyWithImpl<$Res>
    extends _$RootStateModelCopyWithImpl<$Res, _$RootStateModelImpl>
    implements _$$RootStateModelImplCopyWith<$Res> {
  __$$RootStateModelImplCopyWithImpl(
      _$RootStateModelImpl _value, $Res Function(_$RootStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$RootStateModelImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RootState,
    ));
  }
}

/// @nodoc

class _$RootStateModelImpl implements _RootStateModel {
  const _$RootStateModelImpl({required this.state});

  @override
  final RootState state;

  @override
  String toString() {
    return 'RootStateModel(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootStateModelImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RootStateModelImplCopyWith<_$RootStateModelImpl> get copyWith =>
      __$$RootStateModelImplCopyWithImpl<_$RootStateModelImpl>(
          this, _$identity);
}

abstract class _RootStateModel implements RootStateModel {
  const factory _RootStateModel({required final RootState state}) =
      _$RootStateModelImpl;

  @override
  RootState get state;
  @override
  @JsonKey(ignore: true)
  _$$RootStateModelImplCopyWith<_$RootStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
