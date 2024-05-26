// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyDetails _$CompanyDetailsFromJson(Map<String, dynamic> json) {
  return _CompanyDetails.fromJson(json);
}

/// @nodoc
mixin _$CompanyDetails {
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDetailsCopyWith<CompanyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDetailsCopyWith<$Res> {
  factory $CompanyDetailsCopyWith(
          CompanyDetails value, $Res Function(CompanyDetails) then) =
      _$CompanyDetailsCopyWithImpl<$Res, CompanyDetails>;
  @useResult
  $Res call(
      {String name,
      String logo,
      String link,
      String desc,
      DateTime startDate,
      DateTime? endDate});
}

/// @nodoc
class _$CompanyDetailsCopyWithImpl<$Res, $Val extends CompanyDetails>
    implements $CompanyDetailsCopyWith<$Res> {
  _$CompanyDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? link = null,
    Object? desc = null,
    Object? startDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyDetailsImplCopyWith<$Res>
    implements $CompanyDetailsCopyWith<$Res> {
  factory _$$CompanyDetailsImplCopyWith(_$CompanyDetailsImpl value,
          $Res Function(_$CompanyDetailsImpl) then) =
      __$$CompanyDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String logo,
      String link,
      String desc,
      DateTime startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$CompanyDetailsImplCopyWithImpl<$Res>
    extends _$CompanyDetailsCopyWithImpl<$Res, _$CompanyDetailsImpl>
    implements _$$CompanyDetailsImplCopyWith<$Res> {
  __$$CompanyDetailsImplCopyWithImpl(
      _$CompanyDetailsImpl _value, $Res Function(_$CompanyDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? link = null,
    Object? desc = null,
    Object? startDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_$CompanyDetailsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDetailsImpl
    with DiagnosticableTreeMixin
    implements _CompanyDetails {
  const _$CompanyDetailsImpl(
      {required this.name,
      required this.logo,
      required this.link,
      required this.desc,
      required this.startDate,
      this.endDate});

  factory _$CompanyDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDetailsImplFromJson(json);

  @override
  final String name;
  @override
  final String logo;
  @override
  final String link;
  @override
  final String desc;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyDetails(name: $name, logo: $logo, link: $link, desc: $desc, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyDetails'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDetailsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, logo, link, desc, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDetailsImplCopyWith<_$CompanyDetailsImpl> get copyWith =>
      __$$CompanyDetailsImplCopyWithImpl<_$CompanyDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDetailsImplToJson(
      this,
    );
  }
}

abstract class _CompanyDetails implements CompanyDetails {
  const factory _CompanyDetails(
      {required final String name,
      required final String logo,
      required final String link,
      required final String desc,
      required final DateTime startDate,
      final DateTime? endDate}) = _$CompanyDetailsImpl;

  factory _CompanyDetails.fromJson(Map<String, dynamic> json) =
      _$CompanyDetailsImpl.fromJson;

  @override
  String get name;
  @override
  String get logo;
  @override
  String get link;
  @override
  String get desc;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$CompanyDetailsImplCopyWith<_$CompanyDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
