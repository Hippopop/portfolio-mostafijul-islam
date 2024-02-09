// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDetailsImpl _$$CompanyDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDetailsImpl(
      name: json['name'] as String,
      logo: json['logo'] as String,
      link: json['link'] as String,
      desc: json['desc'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$CompanyDetailsImplToJson(
        _$CompanyDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'link': instance.link,
      'desc': instance.desc,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
