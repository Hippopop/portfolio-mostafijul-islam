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
      desc:
          "Eu duis cupidatat duis quis veniam fugiat consectetur deserunt aute consectetur occaecat quis. Commodo eu exercitation do officia ipsum eu aute sit est sit. Velit ullamco proident do velit est nisi qui. Ullamco do eiusmod nulla eu officia Lorem quis quis aliquip sit minim et. Ex tempor Lorem est eu quis cillum in aute nisi ullamco ad elit nisi. Sit exercitation incididunt nulla Lorem officia incididunt ex sit aliquip minim labore in aliqua.",
      link: "https://lomeyo.com/",
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
      desc:
          "Id in ad cupidatat occaecat elit. Consectetur aliquip dolor dolor aliquip proident cupidatat. Aute ea quis id eiusmod. Elit consectetur laboris dolor reprehenderit irure velit et laboris ullamco. Eu irure voluptate do aliqua adipisicing culpa non dolore mollit nulla labore cillum aliqua enim.",
      link: "https://marhaba.com.bd/",
      startDate: DateTime(2023, 05, 01),
      endDate: DateTime(2023, 12, 31),
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
      desc:
          "Dolore nulla et amet ullamco est occaecat incididunt ullamco aliqua aute et esse ipsum. Irure aliqua sunt tempor exercitation mollit. In proident consequat labore laboris sunt mollit excepteur sint laborum.",
      link: "http://tech.rbfgroupbd.com/",
      startDate: DateTime(2022, 03, 01),
      endDate: DateTime(2023, 09, 30),
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
  build() => WorkExperienceState(
        experienceList: _workExperienceList,
        selectedWorkExperienceIndex: 1,
      );

  onExperienceSelect(WorkExperienceModel experienceModel) {
    state = state.copyWith(selectedWorkExperienceIndex: experienceModel.index);
  }
}
