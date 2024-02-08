import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/company_details/company_details.dart';

import '../position_model/position_model.dart';

part 'work_experience_model.freezed.dart';
part 'work_experience_model.g.dart';

@freezed
class WorkExperienceModel with _$WorkExperienceModel {
  const factory WorkExperienceModel({
    required int index,
    required String colorCode,
    required int verticalIntensity,
    required int horizontalIntensity,
    required CompanyDetails company,
    required List<PositionModel> positionList,
  }) = _WorkExperienceModel;

  factory WorkExperienceModel.fromJson(Map<String, Object?> json) =>
      _$WorkExperienceModelFromJson(json);
}
