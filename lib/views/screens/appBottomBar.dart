import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:manahil/views/widgets/appTheme.dart';

class ManahilBottomBar extends StatefulWidget {
  @override
  _ManahilBottomBarState createState() => _ManahilBottomBarState();
}

class _ManahilBottomBarState extends State<ManahilBottomBar> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: appTheme().backgroundColor,
        height: height,
        width: width,

      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 52.0,
        color: Colors.lightBlueAccent,
        backgroundColor: appTheme().backgroundColor,
        buttonBackgroundColor: appTheme().primaryColor,
        items: [
        Icon(Icons.home,size: 20,color: appTheme().scaffoldBackgroundColor,),
        Icon(Icons.access_alarm,size: 20,color: appTheme().scaffoldBackgroundColor,),
        Icon(Icons.notification_important,size: 20,color: appTheme().scaffoldBackgroundColor,),
        Icon(Icons.person,size: 20,color: appTheme().scaffoldBackgroundColor,),
      ],
      animationDuration: Duration(
        milliseconds: 200,
      ),
      animationCurve: Curves.bounceInOut,
      index: 0,
      onTap: (index){

      },
      ),
    );
  }
}
