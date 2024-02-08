import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/data/models/rive_flag/rive_flag_state.dart';

final flagStateProvider = NotifierProvider<FlagStateNotifier, RiveFlagState>(
  FlagStateNotifier.new,
);

class FlagStateNotifier extends Notifier<RiveFlagState> {
  @override
  build() => const RiveFlagState(verticalWind: 3, horizontalWind: 3);

  /// Change the flag!
  changeFlagIndex(int newIndex) =>
      (state = state.copyWith(flagIndex: newIndex));

  /// Change the flag wiggling speed!
  changeVerticalWind(int vertical) =>
      (state = state.copyWith(verticalWind: vertical));

  /// Change the flag waving speed!
  changeHorizontalWind(int horizontal) =>
      (state = state.copyWith(horizontalWind: horizontal));
}
