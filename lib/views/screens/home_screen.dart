import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manahil/views/widgets/appTheme.dart';

import '../widgets/appTheme.dart';

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
          padding: EdgeInsets.only(top: 50, bottom: 20),
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
                padding: EdgeInsets.only(bottom: 20, left: 22, right: 22),
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
                      SizedBox(
                      height: 15,
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
    return Container(
      padding: const EdgeInsets.only(top: 200,left: 10, right: 10),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
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
            padding: const EdgeInsets.only( top: 40 ),
            child:Column(
              children: <Widget>[
                Column(

                  children: [
                    Text(
                      'Popular Courses',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all( 5, ),
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CountryListTile(countryName: 'Course name', label: 'new', noOfTours: 55, rating: 4.2, imgUrl: 'null');
                          }),
                    ),
                    lastWatchedLabel(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: LastWatchVideo(countryName: 'Course name', label: 'new', noOfTours: 55, rating: 4.2, imgUrl: 'null'),

                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}




//// popular courses

class CountryListTile extends StatelessWidget {
  final String label;
  final String countryName;
  final int noOfTours;
  final double rating;
  final String imgUrl;
  CountryListTile(
      {@required this.countryName,
        @required this.label,
        @required this.noOfTours,
        @required this.rating,
        @required this.imgUrl});

  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;

    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.white,
      // ),
      margin: EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SvgPicture.asset(
              'assets/images/fb.svg',
              height: deviceSize.height/4,
              width: deviceSize.width/3,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 200,
            width: 150,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Web Dev",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 8, top: 8),
                              padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.pause_circle_filled_outlined),
                                  Text(
                                    "introduction",
                                    style: TextStyle(color: appTheme().primaryColorDark),
                                  ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


//// popular courses

class LastWatchVideo extends StatelessWidget {
  final String label;
  final String countryName;
  final int noOfTours;
  final double rating;
  final String imgUrl;
  LastWatchVideo(
      {@required this.countryName,
        @required this.label,
        @required this.noOfTours,
        @required this.rating,
        @required this.imgUrl});

  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SvgPicture.asset(
                'assets/images/fb.svg',
                height: deviceSize.height/2,
                width: deviceSize.width/2,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "UI/UX Design",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 8, top: 8),
                                padding:
                                EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white10),
                                child: Row(
                                  children: [
                                    Icon(Icons.pause_circle_filled_outlined),
                                    Text(
                                      "introduction",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



Widget lastWatchedLabel() {
  return Center(
    child: ListTile(
      contentPadding:
      EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0, top: 10.0),
      title: Text(
        'Last Time Watching',
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black87,),),
      subtitle: Text(
        'Introduction',
        style: TextStyle(fontSize: 15, color: Colors.black45,),),
      trailing:RaisedButton.icon(
        label: Text('Resume',
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 15, color: Colors.white,)),
        icon:  Icon(Icons.arrow_forward, color: appTheme().backgroundColor),
        color: appTheme().primaryColorDark,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        onPressed: (){},
      ),
      //continueWatching(),
    ),
  );
}


// Widget continueWatching() {
//   return Center(
//     child: Container(
//       margin: EdgeInsets.all(50),
//       child: RaisedButton.icon(
//         label: Text('Resume',
//             style: TextStyle(fontSize: 17, color: Colors.white,)),
//         icon:  Icon(Icons.arrow_back, color: appTheme().backgroundColor),
//         color: appTheme().primaryColorDark,
//         padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
//         onPressed: (){},
//       ),
//     ),
//   );
// }





