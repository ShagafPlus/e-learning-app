import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manahil/views/widgets/loading_widget.dart';
import '../widgets/appTheme.dart';

///////////
class CourseEnroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Course Title", style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white70,),
          onPressed: (){},
        ),
      ),
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: SvgPicture.asset('assets/images/google.svg'),
                    ),
                      title: Text("Title", style: TextStyle(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    subtitle: Text(
                      "about about about",
                      style: TextStyle(color: Colors.white, fontSize: 16,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 10),
                      child: Text(" description description description description description description  ",
                        style: TextStyle(color: Colors.white, fontSize: 16,),)
                  ),
                ],
              ),

              SizedBox(height: 15,)

            ],
          ),
          //to show the clock
      Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                topLeft: Radius.circular(30)),
            color: Colors.white),
            child:courseInstructor(),
      ),

          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white),
                child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index){
                          return item();
                        }
                        ),
            ),
            ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      enrollNowButton(),
                    ],
                  ),
              )
          ,
        ],
      ),
    );
  }
}

Widget courseInstructor() {
  return Center(
    child: GestureDetector(
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
  );
}

Widget item() {
  return Center(
    child: GestureDetector(
      child: ListTile(

        leading:Card(
          borderOnForeground: true,
          shadowColor: appTheme().primaryColor,
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Text(
                "1",
                style: TextStyle(color: appTheme().primaryColorDark),
              )
          ),
        ),
        contentPadding:
        EdgeInsets.only(left: 35.0, right: 35.0, bottom: 10.0, top: 10.0),
        title: Text(
          'Lesson One',
          style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold, color: Colors.black87,),),
        subtitle: Text(
          '35 minutes',
          style: TextStyle(fontSize: 17, color: Color(0xff4C93FF),),),
        trailing: Container(
          child: FlatButton.icon(

             label: Text(
              '0 %',
              style: TextStyle(fontSize: 22, color: Color(0xff0253B3),
              ),
            ), icon: Icon(Icons.arrow_right),
            onPressed: () {  },
          ),
        ),
      ),
    ),
  );
}

Widget enrollNowButton() {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(80),
      ),
    ),
    child: RaisedButton.icon(
      label: Text(
          'Enroll Now',
          style: TextStyle(fontSize: 17, color: Colors.white,)),
      icon:  Icon(Icons.arrow_back_ios, color: appTheme().backgroundColor),
      color: appTheme().primaryColor,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
      onPressed: (){

        Waiting();
      },
    ),
  );
}

