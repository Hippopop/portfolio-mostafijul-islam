import 'package:flutter/material.dart';

final _reg = RegExp(r'<[^>]*>|&[^;]+;', multiLine: true, caseSensitive: true);

extension StringHelperExtensions on String {
  String get withoutHtml => replaceAll(_reg, " ");

  String get upperCaseFirst {
    if (isEmpty) return this;
    final capChar = characters.first.toUpperCase();
    return capChar + substring(1);
  }
}
