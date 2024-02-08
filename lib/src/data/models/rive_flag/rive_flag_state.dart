import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rive_flag_state.freezed.dart';
part 'rive_flag_state.g.dart';

@freezed
class RiveFlagState with _$RiveFlagState {
  const factory RiveFlagState({
    @Default(0) int flagIndex,
    @Default(0) int verticalWind,
    @Default(0) int horizontalWind,
  }) = _RiveFlagState;

  factory RiveFlagState.fromJson(Map<String, Object?> json) =>
      _$RiveFlagStateFromJson(json);
}
