// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkExperienceStateImpl _$$WorkExperienceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkExperienceStateImpl(
      selectedWorkExperienceIndex: json['selectedWorkExperienceIndex'] as int,
      experienceList: (json['experienceList'] as List<dynamic>)
          .map((e) => WorkExperienceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkExperienceStateImplToJson(
        _$WorkExperienceStateImpl instance) =>
    <String, dynamic>{
      'selectedWorkExperienceIndex': instance.selectedWorkExperienceIndex,
      'experienceList': instance.experienceList,
    };
