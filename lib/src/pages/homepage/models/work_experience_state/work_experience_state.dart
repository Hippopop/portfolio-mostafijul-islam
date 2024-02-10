import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/work_experience_model/work_experience_model.dart';

part 'work_experience_state.freezed.dart';
part 'work_experience_state.g.dart';

@freezed
class WorkExperienceState with _$WorkExperienceState {
  const factory WorkExperienceState({
    required int selectedWorkExperienceIndex,
    required List<WorkExperienceModel> experienceList,
  }) = _WorkExperienceState;

  factory WorkExperienceState.fromJson(Map<String, Object?> json) =>
      _$WorkExperienceStateFromJson(json);
}
