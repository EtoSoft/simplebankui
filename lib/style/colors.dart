import 'package:flutter/material.dart';

class KC {
  static Color primary = Color.fromRGBO(68, 88, 145, 1);
  static Color secondary = Color.fromRGBO(45, 62, 113, 1);
  static Color buttonText = Colors.white;
  static Color buttonBg = secondary;
  static Color contentColorLightTheme = Color(0xFFF5FCF9);
  static Color contentColorDarkTheme = Color(0xFF1D1D35);
  static Color errorColor = Color(0xFFF03738);
  static Color white2 = Color.fromRGBO(244, 244, 244, 1);
  static Color white3 = Color.fromRGBO(240, 240, 240, 1);
  static Color black1 = Color.fromRGBO(46, 46, 46, 1);
  static Color black2 = Color.fromRGBO(19, 20, 22, 1);
  static Color black3 = Color.fromRGBO(28, 28, 29, 1);
}

class LightCol {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: KC.primary,

    scaffoldBackgroundColor: KC.white2,
    canvasColor: KC.white2,
    highlightColor: KC.primary, accentColor: KC.black1,
    //Text Color
    cardColor: KC.black2,
    colorScheme: ColorScheme.light(
      primary: KC.primary,
      secondary: KC.secondary,
      error: KC.errorColor,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: KC.white2,
        actionsIconTheme: IconThemeData(
          color: KC.secondary,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: KC.contentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: KC.contentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: KC.primary),
      showUnselectedLabels: true,
    ),
  );
}

class DarkCol {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: KC.primary,
    scaffoldBackgroundColor: KC.black2,
    accentColor: KC.primary,
    canvasColor: KC.primary,
    highlightColor: KC.white2,
    //Text Color
    cardColor: KC.white2,
    colorScheme: ColorScheme.dark().copyWith(
      primary: KC.primary,
      secondary: KC.black2,
      error: KC.errorColor,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: KC.black2,
        actionsIconTheme: IconThemeData(
          color: KC.white2,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: KC.black2,
      selectedItemColor: Colors.white70,
      unselectedItemColor: KC.black2.withOpacity(0.32),
      showUnselectedLabels: true,
    ),
  );
}
