import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/appTheme.dart';
import '../widgets/appTheme.dart';
import '../widgets/appTheme.dart';

//import 'package:manahil/views/widgets/appTheme.dart';
// import '../widgets/appTheme.dart';

class InsideLesson extends StatefulWidget {
  @override
  _InsideLessonState createState() => _InsideLessonState();
}

class _InsideLessonState extends State<InsideLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().primaryColor.withAlpha(250),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: SvgPicture.asset(
                  "assets/images/group_9716.svg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Container(
          // margin: EdgeInsets.only(top: 40.0),
          decoration: BoxDecoration(
              color: appTheme().backgroundColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0))),
          child: ListView(
            children: [
              courseInstructor(),
              item(),
            ],
          ),
        ),
      ),

    );
  }
}


Widget courseInstructor() {
  return Column(
    children: [
      Text(
        'Course Title',
        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.black87,),),
      GestureDetector(
        child: Card(
          margin: EdgeInsets.all(5.0),
          borderOnForeground: true,
          shadowColor: appTheme().primaryColor,
          child: ListTile(
            contentPadding:
            EdgeInsets.only(left: 22.0, right: 22.0, bottom: 10.0, top: 10.0),
            leading:Card(
              borderOnForeground: true,
              shadowColor: appTheme().primaryColor,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: SvgPicture.asset('assets/images/presentation.svg'),
              ),
            ),
            title: Text(
              'Instructor',
              style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold, color: Colors.black87,),),
            subtitle: Text(
              'PhD. Geography',
              style: TextStyle(fontSize: 17, color: Color(0xff4C93FF),),),
            trailing: Icon(Icons.arrow_forward),
          ),
        ),
      ),
    ],
  );
}



Widget item() {
  return Center(
    child: Container(

      decoration: BoxDecoration(
          color: appTheme().primaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0))),

      child: ListTile(

        contentPadding:
        EdgeInsets.only(left: 35.0, right: 35.0, bottom: 10.0, top: 10.0),
        title: Text(
          'Lesson One',
          style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold, color: Colors.black87,),),
        subtitle: Text(
          '35 minutes',
          style: TextStyle(fontSize: 17, color: appTheme().backgroundColor),),
        trailing: Container(
            child : Icon(Icons.arrow_right),
        ),
      ),
    ),
  );
}

Widget enrollNowButton() {
  return Container(
    margin: EdgeInsets.only(left: 50, right: 50),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(80),
      ),
    ),
    child: RaisedButton.icon(
      label: Text('Enroll Now',
          style: TextStyle(fontSize: 17, color: Colors.white,)),
      icon:  Icon(Icons.arrow_back, color: appTheme().backgroundColor),
      color: appTheme().primaryColorDark,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      onPressed: (){},
    ),
  );
}

