// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionModelImpl _$$PositionModelImplFromJson(Map<String, dynamic> json) =>
    _$PositionModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      endDate: DateTime.parse(json['endDate'] as String),
      startDate: DateTime.parse(json['startDate'] as String),
      tools: (json['tools'] as List<dynamic>)
          .map((e) => ToolModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PositionModelImplToJson(_$PositionModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'endDate': instance.endDate.toIso8601String(),
      'startDate': instance.startDate.toIso8601String(),
      'tools': instance.tools,
    };
