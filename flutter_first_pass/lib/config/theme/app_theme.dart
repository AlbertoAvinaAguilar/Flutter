import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 6, 172, 238);

const List<Color> _colorThemes = [
  _customColor,
  Colors.orange,
  Colors.blue,
  Colors.red
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0 && selectColor <= _colorThemes.length - 1,
            'Color puede ser solamente entre 0 y ${_colorThemes.length - 1}');

  //Tema dinamico
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectColor]);
    // brightness: Brightness.dark);
  }
}