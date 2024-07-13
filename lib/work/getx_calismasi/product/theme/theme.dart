import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static final lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
    ),
    primaryColor: Colors.deepPurple,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
    ),
    primaryColor: Colors.blueGrey[400],
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
  );
}
