import 'package:flutter/material.dart';
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
                        (index) => Tooltip(
                          message: "ToolTip Message!",
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              hoverColor: Colors.green,
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Row(
                                  children: [
                                    const SizedBox.square(
                                      dimension: 42,
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
          );
        });
  }
}
