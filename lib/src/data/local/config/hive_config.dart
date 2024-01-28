import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static const themeKey = 'THEME_KEY';

  static Future<void> initialize() async {
    await Hive.initFlutter();
    await Hive.openBox<String>(themeKey);
  }

  Box<String> get themeBox => Hive.box(themeKey);

  Future<void> dispose() async {
    themeBox.clear();
  }
}
