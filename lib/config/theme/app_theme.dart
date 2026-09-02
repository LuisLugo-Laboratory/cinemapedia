import 'package:flutter/material.dart';


//configuración del tema de la app
class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xff2862F5),
  );
}