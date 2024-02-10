import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_mostafij/src/data/models/tool_model/tool_model.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
class PositionModel with _$PositionModel {
  const factory PositionModel({
    required String name,
    required String description,
    required DateTime endDate,
    required DateTime startDate,
    required List<ToolModel> tools,
  }) = _PositionModel;

  factory PositionModel.fromJson(Map<String, Object?> json) =>
      _$PositionModelFromJson(json);
}
