import 'package:flutter/material.dart';

import 'views/screens/appBottomBar.dart';
import 'views/widgets/loading_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manahil',
    // theme: appTheme(),
      home: Loading(),
    );
  }
}
