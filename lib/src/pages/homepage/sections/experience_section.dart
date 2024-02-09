import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_hero/local_hero.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/work_experience_model/work_experience_model.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/experience_controller.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/flag_state_notifier.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/date_time_extensions.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';
import 'package:rive/rive.dart';

class RivePositionFlag extends ConsumerStatefulWidget {
  const RivePositionFlag({
    super.key,
  });

  @override
  ConsumerState<RivePositionFlag> createState() => _RivePositionFlagState();
}

class _RivePositionFlagState extends ConsumerState<RivePositionFlag> {
  Artboard? artboard;
  late final SMIInput<double>? flagIndex;
  late final SMIInput<double>? horizontalWind;
  late final SMIInput<double>? verticalWind;

  @override
  void initState() {
    super.initState();
    _initializeArtboard().then((value) => setState(() {}));
  }

  Future<void> _initializeArtboard() async {
    try {
      final rawFile = await rootBundle.load(
        "assets/animations/rive/position_flag.riv",
      );
      final file = RiveFile.import(rawFile);
      artboard = file.mainArtboard;

      const baseStateName = "Base State Machine";
      final controller = StateMachineController.fromArtboard(
        artboard!,
        baseStateName,
      );

      if (controller != null) {
        artboard!.addController(controller);
      }

      flagIndex = controller?.findSMI("Flag Number") as SMINumber?;
      horizontalWind = controller?.findSMI("Side Wind Speed") as SMINumber?;
      verticalWind = controller?.findSMI("Jiggle Wind Speed") as SMINumber?;

      // Set starting value!
      final provider = ref.read(flagStateProvider);
      flagIndex?.value = provider.flagIndex.toDouble();
      horizontalWind?.value = provider.horizontalWind.toDouble();
      verticalWind?.value = provider.verticalWind.toDouble();
    } catch (e, s) {
      log("#RiveFlagInitError", error: e, stackTrace: s);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 654 / 1034,
      child: artboard == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Consumer(
              builder: (context, ref, child) {
                ref.listen(
                  flagStateProvider,
                  (previous, next) {
                    flagIndex?.value = next.flagIndex.toDouble();
                    verticalWind?.value = next.verticalWind.toDouble();
                    horizontalWind?.value = next.verticalWind.toDouble();
                  },
                );
                return InkWell(
                  onTap: () {
                    final provider = ref.read(flagStateProvider.notifier);
                    final index = ((flagIndex?.value ?? 0) + 1).toInt();
                    provider.changeFlagIndex(_rotateWithinLength(index, 4));
                    provider.changeVerticalWind(100);
                    provider.changeHorizontalWind(100);
                  },
                  child: Rive(
                    artboard: artboard!,
                  ),
                );
              },
            ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, state, child) {
        return MaterialTwoSpecificationWrapper(
          state: context.responsiveState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: vertical16,
                child: Center(
                  child: Text(
                    "Work Experience",
                    style: context.text.headlineMedium?.merge(
                      GoogleFonts.sofia(
                        color: context.color.opposite,
                      ),
                    ),
                  ),
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    const RivePositionFlag(),
                    24.width,
                    Expanded(
                      child: Consumer(builder: (context, ref, child) {
                        final controller =
                            ref.watch(workExperienceStateProvider);
                        return Column(
                          children: [
                            ...controller.experienceList
                                .map(
                                  (workExperience) => Column(
                                    children: [
                                      WorkExperienceWidget(
                                        experienceModel: workExperience,
                                        selectedExpIndex: controller
                                            .selectedWorkExperienceIndex,
                                        onSelect: (data) {
                                          ref
                                              .read(workExperienceStateProvider
                                                  .notifier)
                                              .onExperienceSelect(data);
                                        },
                                        onHover: (state, data) {
                                          ref
                                              .read(workExperienceStateProvider
                                                  .notifier)
                                              .onExperienceSelect(data);
                                          final provider = ref
                                              .read(flagStateProvider.notifier);

                                          if (state) {
                                            provider
                                                .changeFlagIndex(data.index);
                                            provider.changeVerticalWind(
                                                data.verticalIntensity);
                                            provider.changeHorizontalWind(
                                                data.horizontalIntensity);
                                          } /* else {
                                            provider.changeFlagIndex(0);
                                            provider.changeVerticalWind(0);
                                            provider.changeHorizontalWind(0);
                                          } */
                                        },
                                      ),
                                      8.height,
                                    ],
                                  ),
                                )
                                .toList(),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({
    super.key,
    required this.onHover,
    required this.onSelect,
    required this.selectedExpIndex,
    required this.experienceModel,
  });

  final int? selectedExpIndex;
  final WorkExperienceModel experienceModel;
  final void Function(WorkExperienceModel data) onSelect;
  final void Function(bool state, WorkExperienceModel data) onHover;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: br8,
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: InkWell(
        borderRadius: br8,
        hoverColor: Colors.grey.shade200,
        onTap: () => onSelect(experienceModel),
        onHover: (value) => onHover(value, experienceModel),
        child: LocalHeroScope(
          duration: Durations.medium2,
          child: AnimatedSize(
            duration: Durations.medium2,
            child: Padding(
              padding: all16,
              child: selectedExpIndex == experienceModel.index
                  ? ExpandedExperienceTile(experienceModel: experienceModel)
                  : CollapsedExperienceTile(experienceModel: experienceModel),
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandedExperienceTile extends StatelessWidget {
  const ExpandedExperienceTile({
    super.key,
    required this.experienceModel,
  });

  final WorkExperienceModel experienceModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        12.height,
        Align(
          alignment: Alignment.centerLeft,
          child: LocalHero(
            tag: "#COMPANY_ICON_${experienceModel.index}",
            child: SizedBox.square(
              dimension: 32,
              child: Image.asset("assets/icons/company.png"),
            ),
          ),
        ),
        6.height,
        LocalHero(
          tag: "#COMPANY_NAME_${experienceModel.index}",
          child: Text(
            experienceModel.company.name,
            style: context.text.titleLarge?.merge(
              GoogleFonts.sansita(
                decorationThickness: 0.3,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
          ),
        ),
        4.height,
        Row(
          children: [
            Text(
              "${experienceModel.company.startDate.year} - ${experienceModel.company.endDate?.year}",
            ),
            4.width,
            Text(
              "(${(experienceModel.company.endDate ?? DateTime.now()).difference(experienceModel.company.startDate).adaptiveDurationString})",
              style: context.text.bodyLarge?.merge(
                GoogleFonts.roboto(
                  color: context.color.primary,
                  decorationThickness: 0.3,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class CollapsedExperienceTile extends StatelessWidget {
  const CollapsedExperienceTile({
    super.key,
    required this.experienceModel,
  });

  final WorkExperienceModel experienceModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  LocalHero(
                    tag: "#COMPANY_ICON_${experienceModel.index}",
                    child: SizedBox.square(
                      dimension: 24,
                      child: Image.asset("assets/icons/company.png"),
                    ),
                  ),
                  12.width,
                  LocalHero(
                    tag: "#COMPANY_NAME_${experienceModel.index}",
                    child: Text(
                      experienceModel.company.name,
                      style: context.text.titleLarge?.merge(
                        GoogleFonts.sansita(
                          decorationThickness: 0.3,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dashed,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              4.height,
              Row(
                children: [
                  const SizedBox.square(
                    dimension: 24,
                  ),
                  12.width,
                  Text(
                    experienceModel.positionList.firstOrNull?.name ??
                        "Flutter Developer",
                    style: context.text.bodyLarge?.merge(
                      GoogleFonts.roboto(
                        decorationThickness: 0.3,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 24,
              child: Center(
                child: Text(
                  "${experienceModel.company.startDate.year} - ${experienceModel.company.endDate?.year}",
                ),
              ),
            ),
            4.height,
            Text(
              (experienceModel.company.endDate ?? DateTime.now())
                  .difference(experienceModel.company.startDate)
                  .adaptiveDurationString,
              style: context.text.bodyLarge?.merge(
                GoogleFonts.roboto(
                  color: context.color.primary,
                  decorationThickness: 0.3,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

int _rotateWithinLength(int currentIndex, int length) {
  final maxIndex = length - 1;
  if (currentIndex <= maxIndex) return currentIndex;
  final value = length % currentIndex;
  return value;
}