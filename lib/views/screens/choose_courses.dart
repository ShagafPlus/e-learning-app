import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:manahil/views/screens/signup_screen.dart';
import 'package:manahil/views/widgets/appTheme.dart';

import 'choose_plan.dart';

class ChooseCourses extends StatelessWidget {
  static const routeName = '/ChooseCourses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Positioned(top: 40, left: 0, child: _backButton()),
          PageTitle(),
        Container(// this container should be doublicated according to courses data from server
          margin: EdgeInsets.only(top:23),
          child : Column(
            children: [
              CategoryTitle(title: 'Programming',),
              CoursesData(
                    courses: ['data structure','flutter','php', 'static data',
                        'Osama Sayed','data base','daaaaaaataa', 'dynamic data']
                      ),
                    ],
                  ),
                ),
          Container(
            margin: EdgeInsets.only(top:220),
            child : Column(
              children: [
                CategoryTitle(title: 'Sales',),
                CoursesData(
                    courses: ['static data','Ali Ali','daaaaataaaa','Osama', 'whole data static',
                      'os','Allah','data', 'whole data static','Ali']
                ),
              ],
            ),
          ),
          RegisterButton(),
        ],
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top:500),
        child: RaisedButton(
          color: appTheme().primaryColorDark,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 120),
          onPressed: (){
            Navigator.of(context).pushNamed(ChoosePlan.routeName);
          },
          //registering courses
          child: Text('Register',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CoursesData extends StatelessWidget {
  List<String> courses = new List();
  CoursesData({@required this.courses});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
      child: Wrap(
        spacing: 5,
        children: [
          for(int i=0; i<courses.length;i++)
          GestureDetector(
            onTap: (){
              // change wrap's color and send course and category to the server
            },
              child: Chip(
                backgroundColor: Colors.white,
                label: Text(
                  this.courses[i],
                  style: TextStyle(
                    color: appTheme().primaryColorDark
                  ),

              ),
              ),
          ),
        ],
      ),
    );
  }
}



Widget _backButton() {
  return InkWell(
      onTap: () {
        //  Navigator.pop(context);// Navigate to previous screen
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.arrow_back, color: appTheme().primaryColorDark),
            ),
            SizedBox(width: 10,),
            Text('Back',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,
                    color: appTheme().primaryColorDark))
          ]))
  );
}

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 25, top: 85, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Choose your courses', style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
      ]
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  CategoryTitle({@required this.title});
  @override
  Widget build(BuildContext context) {
    return
        Container(
          padding: EdgeInsets.only(left: 25, top: 120, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              ),

      ]
          ),
    );
  }
}



