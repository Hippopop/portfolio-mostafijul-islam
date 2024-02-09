import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/data/models/work_experience/work_experience_model/work_experience_model.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/experience_controller.dart';
import 'package:portfolio_mostafij/src/pages/homepage/controllers/flag_state_notifier.dart';
import 'package:portfolio_mostafij/src/services/theme/app_theme.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/string_extensions.dart';
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
                                            .selectedWorkExperience?.index,
                                        onSelect: (data) {},
                                        onHover: (state, data) {
                                          final provider = ref
                                              .read(flagStateProvider.notifier);

                                          if (state) {
                                            provider
                                                .changeFlagIndex(data.index);
                                            provider.changeVerticalWind(
                                                data.verticalIntensity);
                                            provider.changeHorizontalWind(
                                                data.horizontalIntensity);
                                          } else {
                                            provider.changeFlagIndex(0);
                                            provider.changeVerticalWind(0);
                                            provider.changeHorizontalWind(0);
                                          }
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
      shape: const RoundedRectangleBorder(
        borderRadius: br8,
        side: BorderSide(color: Colors.grey),
      ),
      child: InkWell(
        borderRadius: br8,
        hoverColor: Colors.grey.shade300,
        onTap: () => onSelect(experienceModel),
        onHover: (value) => onHover(value, experienceModel),
        child: const SizedBox(
          height: 100,
          child: Center(
            child: Text(
              "",
            ),
          ),
        ),
      ),
    );
  }
}

int _rotateWithinLength(int currentIndex, int length) {
  final maxIndex = length - 1;
  if (currentIndex <= maxIndex) return currentIndex;
  final value = length % currentIndex;
  return value;
}
