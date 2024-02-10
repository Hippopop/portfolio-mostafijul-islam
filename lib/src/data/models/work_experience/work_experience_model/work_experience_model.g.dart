// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkExperienceModelImpl _$$WorkExperienceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkExperienceModelImpl(
      index: json['index'] as int,
      colorCode: json['colorCode'] as String,
      verticalIntensity: json['verticalIntensity'] as int,
      horizontalIntensity: json['horizontalIntensity'] as int,
      company: CompanyDetails.fromJson(json['company'] as Map<String, dynamic>),
      positionList: (json['positionList'] as List<dynamic>)
          .map((e) => PositionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkExperienceModelImplToJson(
        _$WorkExperienceModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'colorCode': instance.colorCode,
      'verticalIntensity': instance.verticalIntensity,
      'horizontalIntensity': instance.horizontalIntensity,
      'company': instance.company,
      'positionList': instance.positionList,
    };
