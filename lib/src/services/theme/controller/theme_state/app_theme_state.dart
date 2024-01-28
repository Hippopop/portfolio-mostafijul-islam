import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme_state.freezed.dart';

@freezed
class AppThemeState with _$AppThemeState {
  const factory AppThemeState({
    required ThemeData currentTheme,
    required Map<String, ThemeData> availableThemeSet,
  }) = _AppThemeState;
}
