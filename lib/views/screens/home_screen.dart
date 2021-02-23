import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manahil/views/widgets/appTheme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: Stack(
        children: <Widget>[
          ManahilAppBar(),
          CardsBody(),
        ],
      ),
    );
  }
}

class ManahilAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 60, bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 0, left: 22, right: 22),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Search here.....",
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(5.0)))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Hi, Good Evening',
                          style: TextStyle(
                            color: appTheme().primaryColorDark,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: appTheme().primaryColorDark,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    /*  SizedBox(
                      width: 45,
                    ),*/
                    Container(
                      padding: EdgeInsets.only(
                        left: 130,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Group 5.svg',
                        fit: BoxFit.cover,
                        height: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class CardsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 230, left: 10, right: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: Text(
                      'My Courses',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  GridView.count(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                    crossAxisCount: 2,
                    // scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    primary: true, //Screensize grid count
                    childAspectRatio: 1.5, //1.0
                    mainAxisSpacing: 12.2, //1.0
                    crossAxisSpacing: 6.0, //1.0
                    children: [
                      Card(color: appTheme().primaryColor),
                      Card(
                        color: Colors.red.shade300,
                      ),
                      Card(
                        color: Colors.green,
                      ),
                      Card(
                        color: Colors.yellow.shade50,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 230, top: 5),
                    child:Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Text(
                              'Popular Courses',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

            /*      GridView.count(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                    crossAxisCount: 1,
                    //scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    primary: true, //Screensize grid count
                    childAspectRatio: 1.5, //1.0
                    mainAxisSpacing: 12.2, //1.0
                    crossAxisSpacing: 6.0, //1.0
                    children: [
                      Card(color: appTheme().primaryColor),
                      Card(
                        color: Colors.red.shade300,
                      ),
                      Card(
                        color: Colors.green,
                      ),
                      Card(
                        color: Colors.yellow.shade50,
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


