import 'package:flutter/material.dart';
import 'providers/languageProvider.dart';
import 'views/intro_screens/splash_screen.dart';
import 'views/screens/appBottomBar.dart';
import 'views/screens/choose_courses.dart';
import 'views/screens/choose_plan.dart';
import 'views/screens/course_enroll_screen.dart';
import 'views/screens/login_screen.dart';
import 'views/screens/signup_screen.dart';
import 'views/widgets/loading_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>LanguageProvider()),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manahil',
    // theme: appTheme(),
      home: Splash(),
      routes: {
        LoginScreen.routeName:(ctx)=>LoginScreen(),
        SignUpScreen.routeName:(ctx)=>SignUpScreen(),
        ChooseCourses.routeName:(ctx)=>ChooseCourses(),
        ChoosePlan.routeName:(ctx)=>ChoosePlan(),
        ManahilBottomBar.routeName:(ctx)=>ManahilBottomBar(),
        CourseEnroll.routeName:(ctx)=>CourseEnroll(),
      }, // Defining app routes
    );
  }
}

//how to use it :
//Navigator.of(context).pushNamed(screenName.routeName);
