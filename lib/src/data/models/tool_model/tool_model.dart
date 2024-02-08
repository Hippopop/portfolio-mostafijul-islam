import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tool_model.freezed.dart';
part 'tool_model.g.dart';

@freezed
class ToolModel with _$ToolModel {
  const factory ToolModel({
    required String name,
    String? icon,
    String? link,
  }) = _ToolModel;

  factory ToolModel.fromJson(Map<String, Object?> json) =>
      _$ToolModelFromJson(json);
}
