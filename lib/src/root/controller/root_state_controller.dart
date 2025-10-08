import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mostafij/src/data/local/config/hive_config.dart';
import 'package:portfolio_mostafij/src/root/model/root_state_model.dart';

final appStateProvider = FutureProvider<RootStateModel>(
  (ref) async {
    await GoogleFonts.pendingFonts(
      [
        GoogleFonts.inter(),
        GoogleFonts.sofia(),
        GoogleFonts.roboto(),
        GoogleFonts.dmMono(),
        GoogleFonts.poppins(),
        GoogleFonts.righteous(),
        GoogleFonts.sourceSans3(),
      ],
    );
    await HiveConfig.initialize();
    return const RootStateModel(
      state: RootState.success,
    );
  },
);
