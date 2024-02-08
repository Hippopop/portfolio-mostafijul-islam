// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkExperienceStateImpl _$$WorkExperienceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkExperienceStateImpl(
      selectedWorkExperience: json['selectedWorkExperience'] == null
          ? null
          : WorkExperienceModel.fromJson(
              json['selectedWorkExperience'] as Map<String, dynamic>),
      experienceList: (json['experienceList'] as List<dynamic>)
          .map((e) => WorkExperienceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkExperienceStateImplToJson(
        _$WorkExperienceStateImpl instance) =>
    <String, dynamic>{
      'selectedWorkExperience': instance.selectedWorkExperience,
      'experienceList': instance.experienceList,
    };
