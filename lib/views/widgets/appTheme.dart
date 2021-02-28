import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Color(0xff4C93FF), //enroll button,
    primaryColorDark: Color(0xff0253B3), //in login button
    bottomAppBarColor: Color(0xffc0c5d8),
    backgroundColor: Color(0xffeff2f4),
    primaryColorLight: Color(0x22EFF2F4), //layout background & text field]
    accentColor: Color(0xff298EBD), // for enroll buttons
    hintColor: Color(0xff82858C), // for search hint test in the home page
    dividerColor: Color(0xff1967B0).withOpacity(0.5),
    buttonColor: Color(0xff00D8D0),
    scaffoldBackgroundColor: Color(0xffF8F8F8),
    canvasColor: Color(0x22EFF2F4),
  );
}

//#