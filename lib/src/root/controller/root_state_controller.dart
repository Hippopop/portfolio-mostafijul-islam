import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/data/local/config/hive_config.dart';
import 'package:portfolio_mostafij/src/root/model/root_state_model.dart';

final appStateProvider = FutureProvider<RootStateModel>(
  (ref) async {
    await HiveConfig.initialize();
    return const RootStateModel(
      state: RootState.success,
    );
  },
);
