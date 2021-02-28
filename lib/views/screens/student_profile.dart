import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manahil/views/screens/profile_other.dart';
import 'package:manahil/views/screens/profile_progress.dart';
import 'package:manahil/views/widgets/appTheme.dart';



class StudentProfile extends StatefulWidget {
  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: Stack(
        children: <Widget>[
          ProfileTabs(),
          // ProfileAppBar(),
        ],
      ),
    );
  }
}

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20,),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.edit),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                  Icon(Icons.settings),
                ],
              ),
              profileHeader(),
            ],
          ),
        ),
      ]),
    );
  }
}


Widget profileHeader() {
  return Center(
    child: GestureDetector(
      child: ListTile(

        leading: CircleAvatar(
          // backgroundImage: AssetImage('asset/images/grout_9710.svg'),// SvgPicture.asset('asset/images/grout_9710.svg'),
          //child: SvgPicture.asset('asset/images/grout_9710.svg'),
        ),
        contentPadding:
        EdgeInsets.only(left: 35.0, right: 35.0, bottom: 10.0, top: 10.0),
        title: Text(
          'Name',
          style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold, color: Colors.black87,),),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '35 minutes',
              style: TextStyle(fontSize: 18, color: Color(0xff4C93FF),),),
         Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
              style: TextStyle(fontSize: 15, color: appTheme().hintColor),),
          ],
        ),
      ),
    ),
  );
}


class ProfileTabs extends StatefulWidget {
  @override
  _ProfileTabsState createState() => _ProfileTabsState();
}

class _ProfileTabsState extends State<ProfileTabs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          SizedBox(height: 20.0),
          ProfileAppBar(),
          DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 70,right: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  child: TabBar(
                    labelColor: appTheme().primaryColor,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Progress'),
                      Tab(text: 'Other'),
                    ],
                  ),
                ),
                Container(
                     height: 380, //height of TabBarView
                    child: TabBarView(children: <Widget>[
                      ProfileProgress(),
                      OtherProfile(),
                    ])
                )
              ])
          ),
        ]),
      ),
    );
  }
}