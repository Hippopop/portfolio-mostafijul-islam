import 'package:flutter/material.dart';

final _htmlDetectReg = RegExp(
  r'<[^>]*>|&[^;]+;',
  multiLine: true,
  caseSensitive: true,
);

extension StringHelperExtensions on String {
  String get withoutHtml => replaceAll(_htmlDetectReg, " ");

  String get upperCaseFirst {
    if (isEmpty) return this;
    final capChar = characters.first.toUpperCase();
    return capChar + substring(1);
  }

  int get toColorValue {
    bool hasHash = characters.first == '#';
    final value = int.tryParse("0xff${substring(1)}");
    final isPureCode = hasHash && length == 7 && value != null;
    assert(isPureCode, "This is not a correct [Color] hash code!");
    return value!;
  }
}
