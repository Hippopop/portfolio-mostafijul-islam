// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectStructure _$ProjectStructureFromJson(Map<String, dynamic> json) {
  return _ProjectStructure.fromJson(json);
}

/// @nodoc
mixin _$ProjectStructure {
  CompanyDetails? get company => throw _privateConstructorUsedError;
  String get coverPic => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get projectDetails => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  List<({String link, ProjectPublishSpace store})> get links =>
      throw _privateConstructorUsedError;
  List<({String link, String title})> get screenshots =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectStructureCopyWith<ProjectStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStructureCopyWith<$Res> {
  factory $ProjectStructureCopyWith(
          ProjectStructure value, $Res Function(ProjectStructure) then) =
      _$ProjectStructureCopyWithImpl<$Res, ProjectStructure>;
  @useResult
  $Res call(
      {CompanyDetails? company,
      String coverPic,
      String projectName,
      String projectDetails,
      String shortDescription,
      List<({String link, ProjectPublishSpace store})> links,
      List<({String link, String title})> screenshots});

  $CompanyDetailsCopyWith<$Res>? get company;
}

/// @nodoc
class _$ProjectStructureCopyWithImpl<$Res, $Val extends ProjectStructure>
    implements $ProjectStructureCopyWith<$Res> {
  _$ProjectStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? coverPic = null,
    Object? projectName = null,
    Object? projectDetails = null,
    Object? shortDescription = null,
    Object? links = null,
    Object? screenshots = null,
  }) {
    return _then(_value.copyWith(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDetails?,
      coverPic: null == coverPic
          ? _value.coverPic
          : coverPic // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDetails: null == projectDetails
          ? _value.projectDetails
          : projectDetails // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<({String link, ProjectPublishSpace store})>,
      screenshots: null == screenshots
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<({String link, String title})>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyDetailsCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyDetailsCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStructureImplCopyWith<$Res>
    implements $ProjectStructureCopyWith<$Res> {
  factory _$$ProjectStructureImplCopyWith(_$ProjectStructureImpl value,
          $Res Function(_$ProjectStructureImpl) then) =
      __$$ProjectStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CompanyDetails? company,
      String coverPic,
      String projectName,
      String projectDetails,
      String shortDescription,
      List<({String link, ProjectPublishSpace store})> links,
      List<({String link, String title})> screenshots});

  @override
  $CompanyDetailsCopyWith<$Res>? get company;
}

/// @nodoc
class __$$ProjectStructureImplCopyWithImpl<$Res>
    extends _$ProjectStructureCopyWithImpl<$Res, _$ProjectStructureImpl>
    implements _$$ProjectStructureImplCopyWith<$Res> {
  __$$ProjectStructureImplCopyWithImpl(_$ProjectStructureImpl _value,
      $Res Function(_$ProjectStructureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? coverPic = null,
    Object? projectName = null,
    Object? projectDetails = null,
    Object? shortDescription = null,
    Object? links = null,
    Object? screenshots = null,
  }) {
    return _then(_$ProjectStructureImpl(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDetails?,
      coverPic: null == coverPic
          ? _value.coverPic
          : coverPic // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDetails: null == projectDetails
          ? _value.projectDetails
          : projectDetails // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<({String link, ProjectPublishSpace store})>,
      screenshots: null == screenshots
          ? _value._screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<({String link, String title})>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectStructureImpl
    with DiagnosticableTreeMixin
    implements _ProjectStructure {
  const _$ProjectStructureImpl(
      {this.company,
      required this.coverPic,
      required this.projectName,
      required this.projectDetails,
      required this.shortDescription,
      required final List<({String link, ProjectPublishSpace store})> links,
      required final List<({String link, String title})> screenshots})
      : _links = links,
        _screenshots = screenshots;

  factory _$ProjectStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectStructureImplFromJson(json);

  @override
  final CompanyDetails? company;
  @override
  final String coverPic;
  @override
  final String projectName;
  @override
  final String projectDetails;
  @override
  final String shortDescription;
  final List<({String link, ProjectPublishSpace store})> _links;
  @override
  List<({String link, ProjectPublishSpace store})> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  final List<({String link, String title})> _screenshots;
  @override
  List<({String link, String title})> get screenshots {
    if (_screenshots is EqualUnmodifiableListView) return _screenshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screenshots);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectStructure(company: $company, coverPic: $coverPic, projectName: $projectName, projectDetails: $projectDetails, shortDescription: $shortDescription, links: $links, screenshots: $screenshots)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectStructure'))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('coverPic', coverPic))
      ..add(DiagnosticsProperty('projectName', projectName))
      ..add(DiagnosticsProperty('projectDetails', projectDetails))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('screenshots', screenshots));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStructureImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.coverPic, coverPic) ||
                other.coverPic == coverPic) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectDetails, projectDetails) ||
                other.projectDetails == projectDetails) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other._screenshots, _screenshots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      company,
      coverPic,
      projectName,
      projectDetails,
      shortDescription,
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(_screenshots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStructureImplCopyWith<_$ProjectStructureImpl> get copyWith =>
      __$$ProjectStructureImplCopyWithImpl<_$ProjectStructureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectStructureImplToJson(
      this,
    );
  }
}

abstract class _ProjectStructure implements ProjectStructure {
  const factory _ProjectStructure(
          {final CompanyDetails? company,
          required final String coverPic,
          required final String projectName,
          required final String projectDetails,
          required final String shortDescription,
          required final List<({String link, ProjectPublishSpace store})> links,
          required final List<({String link, String title})> screenshots}) =
      _$ProjectStructureImpl;

  factory _ProjectStructure.fromJson(Map<String, dynamic> json) =
      _$ProjectStructureImpl.fromJson;

  @override
  CompanyDetails? get company;
  @override
  String get coverPic;
  @override
  String get projectName;
  @override
  String get projectDetails;
  @override
  String get shortDescription;
  @override
  List<({String link, ProjectPublishSpace store})> get links;
  @override
  List<({String link, String title})> get screenshots;
  @override
  @JsonKey(ignore: true)
  _$$ProjectStructureImplCopyWith<_$ProjectStructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
