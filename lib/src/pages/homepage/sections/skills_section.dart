import 'package:flutter/material.dart';
import 'package:portfolio_mostafij/src/constants/design/border_radius.dart';
import 'package:portfolio_mostafij/src/constants/design/paddings.dart';
import 'package:portfolio_mostafij/src/utilities/extensions/size_utilities.dart';
import 'package:portfolio_mostafij/src/utilities/responsive/responsive_parent.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: context.responsiveStateListener,
        builder: (context, state, child) {
          return ColoredBox(
            color: Colors.white,
            child: MaterialTwoSpecificationWrapper(
              state: context.responsiveState,
              child: SizedBox(
                height: 50,
                child: RotatedBox(
                  quarterTurns: -1,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 120,
                    diameterRatio: 3,
                    childDelegate: ListWheelChildLoopingListDelegate(
                      children: List.generate(
                        10,
                        (index) => Padding(
                          padding: all8,
                          child: Tooltip(
                            message: "Flutter",
                            child: Material(
                              borderRadius: br8,
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                borderRadius: br8,
                                hoverColor: Colors.grey.shade300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RotatedBox(
                                    quarterTurns: 1,
                                    child: Row(
                                      children: [
                                        const SizedBox.square(
                                          dimension: 32,
                                          child: FlutterLogo(),
                                        ),
                                        8.width,
                                        const Text("Flutter"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
