import 'dart:developer';

import 'package:flutter/scheduler.dart';
import 'package:portfolio_mostafij/src/constants/assets/assets.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/constants/utils/date_utils.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/work_experience_model/work_experience_model.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/experience_controller.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/flag_state_notifier.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/date_time_extensions.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/helpers/scroll/pause_whilst_scrolling.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

final _initialDuration = 800.ms;

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
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _initializeArtboard().then((value) async {
          if (context.mounted) {
            return setState(() {});
          }
        }).onError(
          (error, stackTrace) => log(
            "Error from ExperienceSection(_initializeArtboard)",
            error: error,
            stackTrace: stackTrace,
          ),
        );
      },
    );
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
                return Rive(artboard: artboard!);
              },
            ),
    );
  }
}

class ExperienceSection extends StatefulWidget {
  const ExperienceSection({super.key});

  @override
  State<ExperienceSection> createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.responsiveStateListener,
      builder: (context, state, child) {
        return MaterialTwoSpecificationWrapper(
          state: context.responsiveState,
          child: switch (state) {
            ResponsiveState.xs ||
            ResponsiveState.ts ||
            ResponsiveState.sm =>
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Padding(
                      padding: vertical8,
                      child: Center(
                        child: Text(
                          "Work Experience",
                          style: context.textTheme.headlineMedium?.merge(
                            GoogleFonts.sofia(
                              color: context.color.opposite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: const RivePositionFlag()
                          .animate()
                          .fadeIn(duration: _initialDuration),
                    ),
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      final controller = ref.watch(workExpProvider);
                      return Column(
                        children: [
                          ...controller.experienceList
                              .map(
                                (workExperience) => Builder(builder: (context) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: WorkExperienceWidget(
                                      experienceModel: workExperience,
                                      isSelected: controller
                                              .selectedWorkExperienceIndex ==
                                          workExperience.index,
                                      onSelect: (data) {
                                        final controller = ref.read(
                                          workExpProvider.notifier,
                                        );
                                        controller.onExperienceSelect(data);
                                      },
                                      onHover: (state, data) async {
                                        final controller = ref.read(
                                          workExpProvider.notifier,
                                        );
                                        controller.onExperienceSelect(data);
                                      },
                                    )
                                        .animate()
                                        .slideY(duration: _initialDuration),
                                  );
                                }),
                              )
                              .toList(),
                        ],
                      );
                    },
                  ),
                ],
              ),
            _ => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: vertical16,
                    child: Center(
                      child: Text(
                        "· Work Experience ·",
                        style: context.textTheme.headlineMedium?.merge(
                          GoogleFonts.sofia(
                            color: context.color.opposite,
                          ),
                        ),
                      ),
                    ),
                  ),
                  24.height,
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const RivePositionFlag()
                            .animate()
                            .fadeIn(duration: _initialDuration),
                        24.width,
                        Expanded(
                          child: Consumer(builder: (context, ref, child) {
                            final controller = ref.watch(workExpProvider);
                            return Column(
                              children: [
                                ...controller.experienceList
                                    .map(
                                      (workExperience) => Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: WorkExperienceWidget(
                                          experienceModel: workExperience,
                                          isSelected: controller
                                                  .selectedWorkExperienceIndex ==
                                              workExperience.index,
                                          onSelect: (data) {
                                            ref
                                                .read(workExpProvider.notifier)
                                                .onExperienceSelect(data);
                                          },
                                          onHover: (state, data) {
                                            ref
                                                .read(workExpProvider.notifier)
                                                .onExperienceSelect(data);
                                            final provider = ref.read(
                                                flagStateProvider.notifier);

                                            if (state) {
                                              provider
                                                  .changeFlagIndex(data.index);
                                              provider.changeVerticalWind(
                                                  data.verticalIntensity);
                                              provider.changeHorizontalWind(
                                                  data.horizontalIntensity);
                                            }
                                          },
                                        )
                                            .animate()
                                            .slideY(duration: _initialDuration),
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
          },
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
    required this.isSelected,
    required this.experienceModel,
  });

  final bool isSelected;
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
        onTap: isSelected ? null : () => onSelect(experienceModel),
        onHover: (value) => onHover(value, experienceModel),
        child: AnimatedSize(
          duration: Durations.medium2,
          child: Padding(
            padding: all16,
            child: isSelected
                ? ExpandedExperienceTile(experienceModel: experienceModel)
                : CollapsedExperienceTile(experienceModel: experienceModel),
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
          child: SizedBox.square(
            dimension: 32,
            child: Image.asset(IconAssets.companyPng),
          ),
        ),
        6.height,
        Row(
          children: [
            Text(
              experienceModel.company.name,
              style: context.textTheme.titleLarge?.merge(
                GoogleFonts.sansita(
                  decorationThickness: 0.3,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            ).animate().fadeIn(),
            3.width,
            IconButton(
              iconSize: 16,
              padding: emptyPadding,
              color: Colors.black38,
              constraints: const BoxConstraints(minHeight: 0, minWidth: 0),
              onPressed: () {
                launchUrl(Uri.parse(experienceModel.company.link));
              },
              icon: const Icon(
                Icons.open_in_new_rounded,
              ),
            )
                .animate(delay: Durations.medium2)
                .fadeIn(duration: Durations.medium3),
          ],
        ),
        4.height,
        Wrap(
          children: [
            Text(
              "${monthY.format(experienceModel.company.startDate)} - ${experienceModel.company.endDate != null ? monthY.format(experienceModel.company.endDate!) : "Now"}",
            ),
            4.width,
            Text(
              "(${(experienceModel.company.endDate ?? DateTime.now()).difference(experienceModel.company.startDate).adaptiveDurationString})",
              style: GoogleFonts.roboto(
                color: context.color.primary,
                decorationThickness: 0.3,
                fontWeight: FontWeight.w300,
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
                  SizedBox.square(
                    dimension: 24,
                    child: Image.asset(IconAssets.companyPng),
                  ),
                  12.width,
                  Expanded(
                    child: Text(
                      experienceModel.company.name,
                      style: context.textTheme.titleLarge?.merge(
                        GoogleFonts.sansita(
                          decorationThickness: 0.3,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dashed,
                        ),
                      ),
                    ).animate().fadeIn(),
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
                  Expanded(
                    child: Text(
                      experienceModel.positionList.firstOrNull?.name ??
                          "Flutter Developer",
                      style: GoogleFonts.roboto(
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
                  "${monthY.format(experienceModel.company.startDate)} - ${experienceModel.company.endDate != null ? monthY.format(experienceModel.company.endDate!) : "Now"}",
                ),
              ),
            ),
            4.height,
            Text(
              (experienceModel.company.endDate ?? DateTime.now())
                  .difference(experienceModel.company.startDate)
                  .adaptiveDurationString,
              style: GoogleFonts.roboto(
                color: context.color.primary,
                decorationThickness: 0.3,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
