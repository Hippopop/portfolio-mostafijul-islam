import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_mostafij/src/constants/assets/assets.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/company_details/company_details.dart';

part 'project_structure.freezed.dart';
part 'project_structure.g.dart';

enum ProjectPublishSpace {
  web(
    storeName: "Web",
    icon: IconAssets.webPng,
  ),
  github(
    storeName: "GitHub",
    icon: IconAssets.githubPng,
  ),
  iOs(
    storeName: "iOs",
    icon: IconAssets.iosPng,
  ),
  android(
    storeName: "Android",
    icon: IconAssets.androidPng,
  );

  final String icon;
  final String storeName;
  const ProjectPublishSpace({required this.icon, required this.storeName});
}

typedef ReferenceLink = ({ProjectPublishSpace store, String link});
typedef Screenshot = ({String title, String link});
// TODO: (@mostafij) Add an [id] section for each project!
// TODO: (@mostafij) Add an [Technologies] section for each project!

@freezed
class ProjectStructure with _$ProjectStructure {
  const factory ProjectStructure({
    CompanyDetails? company,
    required String coverPic,
    required String projectName,
    required String projectDetails,
    required String shortDescription,
    required List<ReferenceLink> links,
    required List<Screenshot> screenshots,
  }) = _ProjectStructure;

  factory ProjectStructure.fromJson(Map<String, Object?> json) =>
      _$ProjectStructureFromJson(json);
}
