import 'package:flutter/material.dart';

ButtonStyle getButtonThemeWithColor(Color color) {
  return ElevatedButton.styleFrom(
    primary: color.withOpacity(0.6),
    onPrimary: Colors.black,
    elevation: 0.0,
  );
}