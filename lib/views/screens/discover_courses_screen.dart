import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manahil/views/widgets/appTheme.dart';

class DiscoverCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DiscoverTitle(),
          DiscoverCourseBody(),
        ],
      ),
    );
  }
}

class DiscoverTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 0, bottom: 20),
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
                padding: EdgeInsets.only(left: 0, top: 85, bottom: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200, bottom: 15),
                      child: Text(
                        'Discover Courses',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25, left: 25),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Search here.....",
                            hintText: 'Search here.....',
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40.0)))),
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

class DiscoverCourseBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 190, left: 40, right: 40),
      child: ListView(
        children: <Widget>[
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Chip(
                label: Text('Available Now',
                style: TextStyle(color: Colors.white,),
                ),
                backgroundColor: appTheme().primaryColor,
              ),
              Chip(
                label: Text('Available Now',
                style: TextStyle(color: appTheme().primaryColor,),
              ),
                backgroundColor: Colors.white,),
            ],
          ),
          
          Card(
            //margin: EdgeInsets.only(top: 1,),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'Beginning',
                    style: TextStyle(color: appTheme().primaryColorDark),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction To Biology \n Biology 101 |  14. Lessons',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    //    child: Text('assets/images/Group 25.svg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                          'Contains lesson description and every related details to courses.\n'),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RaisedButton(
                    color: appTheme().primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: (){},
                    child: ListTile(
                        trailing: CircleAvatar(
                            backgroundColor:appTheme().primaryColor,
                            child: Icon(Icons.arrow_forward_outlined,color: Colors.white,),
                        ),
                        title: Text(
                            'Enrol Now',
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                       textAlign: TextAlign.center,
                        ),
                  ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            //margin: EdgeInsets.only(top: 1,),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'Advanced',
                    style: TextStyle(color: appTheme().primaryColorDark),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction To Geography \n Geo 103 |  14. Lessons',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    //    child: Text('assets/images/Group 25.svg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                          'Geography is the science of knowing the localications and places.\n'
                              'and so on until you know your environment'),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RaisedButton(
                    color: appTheme().primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: (){},
                    child: ListTile(
                      trailing: CircleAvatar(
                          backgroundColor:appTheme().primaryColor,
                          child: Icon(Icons.arrow_forward_outlined,color: Colors.white,)),
                      title: Text(
                        'Enrol Now', style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
