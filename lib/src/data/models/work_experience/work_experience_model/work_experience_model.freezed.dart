// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_experience_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkExperienceModel _$WorkExperienceModelFromJson(Map<String, dynamic> json) {
  return _WorkExperienceModel.fromJson(json);
}

/// @nodoc
mixin _$WorkExperienceModel {
  int get index => throw _privateConstructorUsedError;
  String get colorCode => throw _privateConstructorUsedError;
  int get verticalIntensity => throw _privateConstructorUsedError;
  int get horizontalIntensity => throw _privateConstructorUsedError;
  CompanyDetails get company => throw _privateConstructorUsedError;
  List<PositionModel> get positionList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkExperienceModelCopyWith<WorkExperienceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceModelCopyWith<$Res> {
  factory $WorkExperienceModelCopyWith(
          WorkExperienceModel value, $Res Function(WorkExperienceModel) then) =
      _$WorkExperienceModelCopyWithImpl<$Res, WorkExperienceModel>;
  @useResult
  $Res call(
      {int index,
      String colorCode,
      int verticalIntensity,
      int horizontalIntensity,
      CompanyDetails company,
      List<PositionModel> positionList});

  $CompanyDetailsCopyWith<$Res> get company;
}

/// @nodoc
class _$WorkExperienceModelCopyWithImpl<$Res, $Val extends WorkExperienceModel>
    implements $WorkExperienceModelCopyWith<$Res> {
  _$WorkExperienceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? colorCode = null,
    Object? verticalIntensity = null,
    Object? horizontalIntensity = null,
    Object? company = null,
    Object? positionList = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      verticalIntensity: null == verticalIntensity
          ? _value.verticalIntensity
          : verticalIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      horizontalIntensity: null == horizontalIntensity
          ? _value.horizontalIntensity
          : horizontalIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDetails,
      positionList: null == positionList
          ? _value.positionList
          : positionList // ignore: cast_nullable_to_non_nullable
              as List<PositionModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyDetailsCopyWith<$Res> get company {
    return $CompanyDetailsCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkExperienceModelImplCopyWith<$Res>
    implements $WorkExperienceModelCopyWith<$Res> {
  factory _$$WorkExperienceModelImplCopyWith(_$WorkExperienceModelImpl value,
          $Res Function(_$WorkExperienceModelImpl) then) =
      __$$WorkExperienceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String colorCode,
      int verticalIntensity,
      int horizontalIntensity,
      CompanyDetails company,
      List<PositionModel> positionList});

  @override
  $CompanyDetailsCopyWith<$Res> get company;
}

/// @nodoc
class __$$WorkExperienceModelImplCopyWithImpl<$Res>
    extends _$WorkExperienceModelCopyWithImpl<$Res, _$WorkExperienceModelImpl>
    implements _$$WorkExperienceModelImplCopyWith<$Res> {
  __$$WorkExperienceModelImplCopyWithImpl(_$WorkExperienceModelImpl _value,
      $Res Function(_$WorkExperienceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? colorCode = null,
    Object? verticalIntensity = null,
    Object? horizontalIntensity = null,
    Object? company = null,
    Object? positionList = null,
  }) {
    return _then(_$WorkExperienceModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      verticalIntensity: null == verticalIntensity
          ? _value.verticalIntensity
          : verticalIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      horizontalIntensity: null == horizontalIntensity
          ? _value.horizontalIntensity
          : horizontalIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDetails,
      positionList: null == positionList
          ? _value._positionList
          : positionList // ignore: cast_nullable_to_non_nullable
              as List<PositionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperienceModelImpl
    with DiagnosticableTreeMixin
    implements _WorkExperienceModel {
  const _$WorkExperienceModelImpl(
      {required this.index,
      required this.colorCode,
      required this.verticalIntensity,
      required this.horizontalIntensity,
      required this.company,
      required final List<PositionModel> positionList})
      : _positionList = positionList;

  factory _$WorkExperienceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkExperienceModelImplFromJson(json);

  @override
  final int index;
  @override
  final String colorCode;
  @override
  final int verticalIntensity;
  @override
  final int horizontalIntensity;
  @override
  final CompanyDetails company;
  final List<PositionModel> _positionList;
  @override
  List<PositionModel> get positionList {
    if (_positionList is EqualUnmodifiableListView) return _positionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positionList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkExperienceModel(index: $index, colorCode: $colorCode, verticalIntensity: $verticalIntensity, horizontalIntensity: $horizontalIntensity, company: $company, positionList: $positionList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkExperienceModel'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('colorCode', colorCode))
      ..add(DiagnosticsProperty('verticalIntensity', verticalIntensity))
      ..add(DiagnosticsProperty('horizontalIntensity', horizontalIntensity))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('positionList', positionList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.verticalIntensity, verticalIntensity) ||
                other.verticalIntensity == verticalIntensity) &&
            (identical(other.horizontalIntensity, horizontalIntensity) ||
                other.horizontalIntensity == horizontalIntensity) &&
            (identical(other.company, company) || other.company == company) &&
            const DeepCollectionEquality()
                .equals(other._positionList, _positionList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      colorCode,
      verticalIntensity,
      horizontalIntensity,
      company,
      const DeepCollectionEquality().hash(_positionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceModelImplCopyWith<_$WorkExperienceModelImpl> get copyWith =>
      __$$WorkExperienceModelImplCopyWithImpl<_$WorkExperienceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceModelImplToJson(
      this,
    );
  }
}

abstract class _WorkExperienceModel implements WorkExperienceModel {
  const factory _WorkExperienceModel(
          {required final int index,
          required final String colorCode,
          required final int verticalIntensity,
          required final int horizontalIntensity,
          required final CompanyDetails company,
          required final List<PositionModel> positionList}) =
      _$WorkExperienceModelImpl;

  factory _WorkExperienceModel.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceModelImpl.fromJson;

  @override
  int get index;
  @override
  String get colorCode;
  @override
  int get verticalIntensity;
  @override
  int get horizontalIntensity;
  @override
  CompanyDetails get company;
  @override
  List<PositionModel> get positionList;
  @override
  @JsonKey(ignore: true)
  _$$WorkExperienceModelImplCopyWith<_$WorkExperienceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
