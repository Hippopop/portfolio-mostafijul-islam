// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rive_flag_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RiveFlagState _$RiveFlagStateFromJson(Map<String, dynamic> json) {
  return _RiveFlagState.fromJson(json);
}

/// @nodoc
mixin _$RiveFlagState {
  int get flagIndex => throw _privateConstructorUsedError;
  int get verticalWind => throw _privateConstructorUsedError;
  int get horizontalWind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiveFlagStateCopyWith<RiveFlagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiveFlagStateCopyWith<$Res> {
  factory $RiveFlagStateCopyWith(
          RiveFlagState value, $Res Function(RiveFlagState) then) =
      _$RiveFlagStateCopyWithImpl<$Res, RiveFlagState>;
  @useResult
  $Res call({int flagIndex, int verticalWind, int horizontalWind});
}

/// @nodoc
class _$RiveFlagStateCopyWithImpl<$Res, $Val extends RiveFlagState>
    implements $RiveFlagStateCopyWith<$Res> {
  _$RiveFlagStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flagIndex = null,
    Object? verticalWind = null,
    Object? horizontalWind = null,
  }) {
    return _then(_value.copyWith(
      flagIndex: null == flagIndex
          ? _value.flagIndex
          : flagIndex // ignore: cast_nullable_to_non_nullable
              as int,
      verticalWind: null == verticalWind
          ? _value.verticalWind
          : verticalWind // ignore: cast_nullable_to_non_nullable
              as int,
      horizontalWind: null == horizontalWind
          ? _value.horizontalWind
          : horizontalWind // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiveFlagStateImplCopyWith<$Res>
    implements $RiveFlagStateCopyWith<$Res> {
  factory _$$RiveFlagStateImplCopyWith(
          _$RiveFlagStateImpl value, $Res Function(_$RiveFlagStateImpl) then) =
      __$$RiveFlagStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int flagIndex, int verticalWind, int horizontalWind});
}

/// @nodoc
class __$$RiveFlagStateImplCopyWithImpl<$Res>
    extends _$RiveFlagStateCopyWithImpl<$Res, _$RiveFlagStateImpl>
    implements _$$RiveFlagStateImplCopyWith<$Res> {
  __$$RiveFlagStateImplCopyWithImpl(
      _$RiveFlagStateImpl _value, $Res Function(_$RiveFlagStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flagIndex = null,
    Object? verticalWind = null,
    Object? horizontalWind = null,
  }) {
    return _then(_$RiveFlagStateImpl(
      flagIndex: null == flagIndex
          ? _value.flagIndex
          : flagIndex // ignore: cast_nullable_to_non_nullable
              as int,
      verticalWind: null == verticalWind
          ? _value.verticalWind
          : verticalWind // ignore: cast_nullable_to_non_nullable
              as int,
      horizontalWind: null == horizontalWind
          ? _value.horizontalWind
          : horizontalWind // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiveFlagStateImpl
    with DiagnosticableTreeMixin
    implements _RiveFlagState {
  const _$RiveFlagStateImpl(
      {this.flagIndex = 0, this.verticalWind = 0, this.horizontalWind = 0});

  factory _$RiveFlagStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiveFlagStateImplFromJson(json);

  @override
  @JsonKey()
  final int flagIndex;
  @override
  @JsonKey()
  final int verticalWind;
  @override
  @JsonKey()
  final int horizontalWind;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RiveFlagState(flagIndex: $flagIndex, verticalWind: $verticalWind, horizontalWind: $horizontalWind)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RiveFlagState'))
      ..add(DiagnosticsProperty('flagIndex', flagIndex))
      ..add(DiagnosticsProperty('verticalWind', verticalWind))
      ..add(DiagnosticsProperty('horizontalWind', horizontalWind));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiveFlagStateImpl &&
            (identical(other.flagIndex, flagIndex) ||
                other.flagIndex == flagIndex) &&
            (identical(other.verticalWind, verticalWind) ||
                other.verticalWind == verticalWind) &&
            (identical(other.horizontalWind, horizontalWind) ||
                other.horizontalWind == horizontalWind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, flagIndex, verticalWind, horizontalWind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiveFlagStateImplCopyWith<_$RiveFlagStateImpl> get copyWith =>
      __$$RiveFlagStateImplCopyWithImpl<_$RiveFlagStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiveFlagStateImplToJson(
      this,
    );
  }
}

abstract class _RiveFlagState implements RiveFlagState {
  const factory _RiveFlagState(
      {final int flagIndex,
      final int verticalWind,
      final int horizontalWind}) = _$RiveFlagStateImpl;

  factory _RiveFlagState.fromJson(Map<String, dynamic> json) =
      _$RiveFlagStateImpl.fromJson;

  @override
  int get flagIndex;
  @override
  int get verticalWind;
  @override
  int get horizontalWind;
  @override
  @JsonKey(ignore: true)
  _$$RiveFlagStateImplCopyWith<_$RiveFlagStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
