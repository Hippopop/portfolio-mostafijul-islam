// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_experience_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkExperienceState _$WorkExperienceStateFromJson(Map<String, dynamic> json) {
  return _WorkExperienceState.fromJson(json);
}

/// @nodoc
mixin _$WorkExperienceState {
  WorkExperienceModel? get selectedWorkExperience =>
      throw _privateConstructorUsedError;
  List<WorkExperienceModel> get experienceList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkExperienceStateCopyWith<WorkExperienceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceStateCopyWith<$Res> {
  factory $WorkExperienceStateCopyWith(
          WorkExperienceState value, $Res Function(WorkExperienceState) then) =
      _$WorkExperienceStateCopyWithImpl<$Res, WorkExperienceState>;
  @useResult
  $Res call(
      {WorkExperienceModel? selectedWorkExperience,
      List<WorkExperienceModel> experienceList});

  $WorkExperienceModelCopyWith<$Res>? get selectedWorkExperience;
}

/// @nodoc
class _$WorkExperienceStateCopyWithImpl<$Res, $Val extends WorkExperienceState>
    implements $WorkExperienceStateCopyWith<$Res> {
  _$WorkExperienceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedWorkExperience = freezed,
    Object? experienceList = null,
  }) {
    return _then(_value.copyWith(
      selectedWorkExperience: freezed == selectedWorkExperience
          ? _value.selectedWorkExperience
          : selectedWorkExperience // ignore: cast_nullable_to_non_nullable
              as WorkExperienceModel?,
      experienceList: null == experienceList
          ? _value.experienceList
          : experienceList // ignore: cast_nullable_to_non_nullable
              as List<WorkExperienceModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkExperienceModelCopyWith<$Res>? get selectedWorkExperience {
    if (_value.selectedWorkExperience == null) {
      return null;
    }

    return $WorkExperienceModelCopyWith<$Res>(_value.selectedWorkExperience!,
        (value) {
      return _then(_value.copyWith(selectedWorkExperience: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkExperienceStateImplCopyWith<$Res>
    implements $WorkExperienceStateCopyWith<$Res> {
  factory _$$WorkExperienceStateImplCopyWith(_$WorkExperienceStateImpl value,
          $Res Function(_$WorkExperienceStateImpl) then) =
      __$$WorkExperienceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkExperienceModel? selectedWorkExperience,
      List<WorkExperienceModel> experienceList});

  @override
  $WorkExperienceModelCopyWith<$Res>? get selectedWorkExperience;
}

/// @nodoc
class __$$WorkExperienceStateImplCopyWithImpl<$Res>
    extends _$WorkExperienceStateCopyWithImpl<$Res, _$WorkExperienceStateImpl>
    implements _$$WorkExperienceStateImplCopyWith<$Res> {
  __$$WorkExperienceStateImplCopyWithImpl(_$WorkExperienceStateImpl _value,
      $Res Function(_$WorkExperienceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedWorkExperience = freezed,
    Object? experienceList = null,
  }) {
    return _then(_$WorkExperienceStateImpl(
      selectedWorkExperience: freezed == selectedWorkExperience
          ? _value.selectedWorkExperience
          : selectedWorkExperience // ignore: cast_nullable_to_non_nullable
              as WorkExperienceModel?,
      experienceList: null == experienceList
          ? _value._experienceList
          : experienceList // ignore: cast_nullable_to_non_nullable
              as List<WorkExperienceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperienceStateImpl
    with DiagnosticableTreeMixin
    implements _WorkExperienceState {
  const _$WorkExperienceStateImpl(
      {this.selectedWorkExperience,
      required final List<WorkExperienceModel> experienceList})
      : _experienceList = experienceList;

  factory _$WorkExperienceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkExperienceStateImplFromJson(json);

  @override
  final WorkExperienceModel? selectedWorkExperience;
  final List<WorkExperienceModel> _experienceList;
  @override
  List<WorkExperienceModel> get experienceList {
    if (_experienceList is EqualUnmodifiableListView) return _experienceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experienceList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkExperienceState(selectedWorkExperience: $selectedWorkExperience, experienceList: $experienceList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkExperienceState'))
      ..add(
          DiagnosticsProperty('selectedWorkExperience', selectedWorkExperience))
      ..add(DiagnosticsProperty('experienceList', experienceList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceStateImpl &&
            (identical(other.selectedWorkExperience, selectedWorkExperience) ||
                other.selectedWorkExperience == selectedWorkExperience) &&
            const DeepCollectionEquality()
                .equals(other._experienceList, _experienceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectedWorkExperience,
      const DeepCollectionEquality().hash(_experienceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceStateImplCopyWith<_$WorkExperienceStateImpl> get copyWith =>
      __$$WorkExperienceStateImplCopyWithImpl<_$WorkExperienceStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceStateImplToJson(
      this,
    );
  }
}

abstract class _WorkExperienceState implements WorkExperienceState {
  const factory _WorkExperienceState(
          {final WorkExperienceModel? selectedWorkExperience,
          required final List<WorkExperienceModel> experienceList}) =
      _$WorkExperienceStateImpl;

  factory _WorkExperienceState.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceStateImpl.fromJson;

  @override
  WorkExperienceModel? get selectedWorkExperience;
  @override
  List<WorkExperienceModel> get experienceList;
  @override
  @JsonKey(ignore: true)
  _$$WorkExperienceStateImplCopyWith<_$WorkExperienceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
