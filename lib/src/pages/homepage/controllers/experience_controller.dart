import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/company_details/company_details.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/work_experience_model/work_experience_model.dart';
import 'package:portfolio_mostafij/src/pages/homepage/models/work_experience_state/work_experience_state.dart';

final _workExperienceList = [
  WorkExperienceModel(
    index: 1,
    colorCode: "#7D2323",
    verticalIntensity: 20,
    horizontalIntensity: 50,
    company: CompanyDetails(
      name: "Lomeyo",
      logo: "",
      link: "",
      startDate: DateTime(2023, 11, 07),
    ),
    positionList: [],
  ),
  WorkExperienceModel(
    index: 2,
    colorCode: "#0090DE",
    verticalIntensity: 40,
    horizontalIntensity: 60,
    company: CompanyDetails(
      name: "Marhaba Ltd.",
      logo: "",
      link: "",
      startDate: DateTime(2023, 05, 01),
    ),
    positionList: [],
  ),
  WorkExperienceModel(
    index: 3,
    colorCode: "#9307FD",
    verticalIntensity: 100,
    horizontalIntensity: 100,
    company: CompanyDetails(
      name: "RBF Tech Zone Ltd.",
      logo: "",
      link: "",
      startDate: DateTime(2022, 03, 01),
    ),
    positionList: [],
  ),
];

final workExperienceStateProvider =
    NotifierProvider<WorkExperienceStateNotifier, WorkExperienceState>(
  WorkExperienceStateNotifier.new,
);

class WorkExperienceStateNotifier extends Notifier<WorkExperienceState> {
  @override
  build() => WorkExperienceState(experienceList: _workExperienceList);

  onExperienceSelect(WorkExperienceModel experienceModel) {
    state = state.copyWith(selectedWorkExperience: experienceModel);
  }
}
