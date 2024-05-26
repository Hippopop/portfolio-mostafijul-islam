// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectStructureImpl _$$ProjectStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectStructureImpl(
      company: json['company'] == null
          ? null
          : CompanyDetails.fromJson(json['company'] as Map<String, dynamic>),
      coverPic: json['coverPic'] as String,
      projectName: json['projectName'] as String,
      projectDetails: json['projectDetails'] as String,
      shortDescription: json['shortDescription'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  link: $jsonValue['link'] as String,
                  store: $enumDecode(
                      _$ProjectPublishSpaceEnumMap, $jsonValue['store']),
                ),
              ))
          .toList(),
      screenshots: (json['screenshots'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  link: $jsonValue['link'] as String,
                  title: $jsonValue['title'] as String,
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$$ProjectStructureImplToJson(
        _$ProjectStructureImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'coverPic': instance.coverPic,
      'projectName': instance.projectName,
      'projectDetails': instance.projectDetails,
      'shortDescription': instance.shortDescription,
      'links': instance.links
          .map((e) => {
                'link': e.link,
                'store': _$ProjectPublishSpaceEnumMap[e.store]!,
              })
          .toList(),
      'screenshots': instance.screenshots
          .map((e) => {
                'link': e.link,
                'title': e.title,
              })
          .toList(),
    };

const _$ProjectPublishSpaceEnumMap = {
  ProjectPublishSpace.web: 'web',
  ProjectPublishSpace.iOs: 'iOs',
  ProjectPublishSpace.android: 'android',
};

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
