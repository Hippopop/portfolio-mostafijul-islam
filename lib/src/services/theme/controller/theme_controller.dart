import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/data/local/theme/theme.dart';
import 'package:portfolio_mostafij/src/services/theme/controller/theme_state/app_theme_state.dart';

final themeStateProvider = NotifierProvider<ThemeController, AppThemeState>(
  ThemeController.new,
);

class ThemeController extends Notifier<AppThemeState> {
  static const _themeStorage = ThemeStorage();

  toggleAppTheme(String newThemeKey) async {
    await _themeStorage.setNewTheme(newThemeKey);
    ref.invalidateSelf();
  }

  @override
  AppThemeState build() {
    return AppThemeState(
      currentTheme: _themeStorage.currentTheme(),
      availableThemeSet: _themeStorage.availableThemeList(),
    );
  }
}
