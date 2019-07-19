import 'package:flutter/material.dart';

class SalmaTheme {
  ThemeData mainTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xFF332e48),
      backgroundColor: Color(0xFF332e48),
      primaryColor: Color(0xFF403c56), // home screen container color
      textSelectionColor: Colors.white,
      highlightColor: Color(0xFF6cc494),
      hintColor: Color(0xFF6ac5a2),
      cardColor: Color(0xFF59b28e),
      selectedRowColor: Color(0xFFadcec0),
      textTheme: TextTheme(
          title: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontFamily: 'SFPro',
      )));
}
