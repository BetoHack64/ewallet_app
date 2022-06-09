import 'package:flutter/material.dart';

class CustomThemes{
  ThemeData get mainTheme=>ThemeData(
      primaryColor: const Color(0xff010116),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xfffafafa),
        selectedItemColor: Color(0xff010116),
          unselectedItemColor: Colors.black38,
          selectedLabelStyle: const TextStyle(
            fontFamily: "Bradon",
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: "Bradon",
          )));


}