/*
 */


import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(

    //textEditing color : RBG: r= 227, G=234, B=240
/*
    cardColor: Color.fromARGB(a, r, g, b),
    cardTheme: ,
    splashColor: ,
    errorColor: ,
    appBarTheme: ,
    backgroundColor: ,*/

    primaryColor: Color(0xff4C93FF),//enroll button,
    primaryColorDark: Color(0xff0253B3),//in login button
    primaryColorLight: Color(0x22EFF2F4),//layout background & text field]
    accentColor: Color(0xff298EBD), // for enroll buttons
    hintColor: Color(0xff82858C), // for search hint test in the home page
    dividerColor: Color(0xff1967B0).withOpacity(0.5),
    buttonColor: Color(0xff00D8D0),
    scaffoldBackgroundColor: Color(0xffF8F8F8),
    canvasColor: Color(0x22EFF2F4),
  );
}

// signup icon color :
//E02020

class AppColors {
  static final Color logoutColor=new Color(0xffE02020);

  static final Color primaryColor=new Color.fromARGB(255, 198, 150, 44);
  static final Color primaryLightColor=new Color.fromARGB(230, 198, 150, 44);
  static final Color secondaryColor=new  Color.fromRGBO(17, 76, 136, 1);
  static final Color secondaryLightColor=new  Color.fromARGB(200,17, 76, 136);
  static final Color operators = new Color.fromRGBO(250, 230, 200, 1);
  static final Color selectedOperators = new Color.fromRGBO(250, 230, 200, 1);
}