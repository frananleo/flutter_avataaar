import 'package:flutter/material.dart';

extension HexColor on Color {
  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class BackgroundColorHelper {
  static String getSvgWithBackground(String svg, Color backgroundColor) {
    svg = svg.replaceFirst(
      '#65C9FF',
      backgroundColor.toHex(),
      svg.indexOf('Color/Palette/Blue-01'),
    );

    return svg;
  }
}
