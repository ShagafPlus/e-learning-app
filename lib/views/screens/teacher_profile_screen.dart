import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manahil/views/widgets/appTheme.dart';

import '../widgets/appTheme.dart';

class TeacherProfileScreen extends StatefulWidget {
  @override
  _TeacherProfileScreenState createState() => _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends State<TeacherProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: Stack(
        children: <Widget>[
          ProfileTabs(),
          TeacherBody(),
          // ProfileAppBar(),
        ],
      ),
    );
  }
}

Widget _backButton() {
  return InkWell(
      onTap: () {
        //  Navigator.pop(context); Navigate to previous screen
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.arrow_back, color: appTheme().primaryColorDark),
            ),
          ]))
  );
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
              _backButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Column(
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 22,fontWeight: FontWeight.bold, color: Colors.black87
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Column(
                            children: [
                              Text(
                                'PhD. Geography',
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold, color: appTheme().primaryColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  '4.49',
                                  style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold, color:Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left: 180),
                   child: CircleAvatar(
                     backgroundColor: Colors.amber,
                    // child: Text('Available',style: TextStyle(fontSize: 10),),
                   ),
                 ),
                 // Icon(Icons.settings),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
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
                    labelColor: appTheme().primaryColorDark,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Info',),
                      Tab(text: 'Courses'),
                    ],
                  ),
                ),

              ])
          ),
        ]),
      ),
    );
  }
}


class TeacherBody extends StatefulWidget {
  @override
  _TeacherBodyState createState() => _TeacherBodyState();
}

class _TeacherBodyState extends State<TeacherBody> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Introduction',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Lorem ipsum dolor sit amet, consectecture adispiscing sellit,'
                    'send do eisusmod temport incididunt unt labore et dolore manage aligua ut'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Education',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               ListTile(
                 leading: Icon(Icons.circle,color: appTheme().primaryColor,),
                 title: Text('Certification One', style: TextStyle(
                   fontSize: 15,
                   fontWeight:FontWeight.bold,
                 ),
                 ),
                 subtitle: Text('Certification one'),
               ),
               ListTile(
                 leading: Icon(Icons.circle,color: appTheme().primaryColor,),
                 title: Text('Certification One', style: TextStyle(
                   fontSize: 15,
                   fontWeight:FontWeight.bold,
                 ),
                 ),
                 subtitle: Text('Certification one'),
               ),
               ListTile(
                 leading: Icon(Icons.circle,color: appTheme().primaryColor,),
                 title: Text('Certification One', style: TextStyle(
                   fontSize: 15,
                   fontWeight:FontWeight.bold,
                 ),
                 ),
                 subtitle: Text('Certification one'),
               ),
             ],
           ),
            ),
          ),
        ],
      ),
    );
  }

  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 2 ?
    setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
    setState(() => _currentStep -= 1) : null;
  }
}


