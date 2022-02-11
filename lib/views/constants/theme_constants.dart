import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.yellow,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(color: Colors.black),
        toolbarTextStyle: TextStyle(color: Colors.black),
      ),
      buttonTheme: const ButtonThemeData(buttonColor: Colors.pink),
      sliderTheme: const SliderThemeData(
          activeTrackColor: Colors.blue, inactiveTrackColor: Colors.black));

  final darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(color: Colors.white),
        toolbarTextStyle: TextStyle(color: Colors.white),
      ),
      sliderTheme: const SliderThemeData(
          activeTrackColor: Colors.green, inactiveTrackColor: Colors.white));
}
