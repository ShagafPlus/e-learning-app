import 'package:flutter/material.dart';
import 'package:manahil/views/widgets/appTheme.dart';

class TutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TutorsTitle(),
          TutorsBody(),
          Positioned(top: 40, left: 0, child: _backButton()),
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
          ])));
}

class TutorsTitle extends StatelessWidget {
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
                      padding: const EdgeInsets.only(right: 290, bottom: 15),
                      child: Text(
                        'Tutors',
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

class TutorsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 230, left: 15, right: 15),
      child: ListView(
        children: [
          Card(
            //margin: EdgeInsets.only(left: 20,right: 20,bottom: 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              trailing: Icon(Icons.star,color: Colors.amber,),
              title: Text('Alison Cooper'),
              subtitle: Text('Available now'),
            ),
            color: Colors.white,
          ),
          Card(
            //margin: EdgeInsets.only(left: 20,right: 20,bottom: 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              trailing: Icon(Icons.star,color: Colors.amber,),
              title: Text('A Cooper'),
              subtitle: Text('Available now'),
            ),
            color: Colors.white,
          ),
          Card(
            //margin: EdgeInsets.only(left: 20,right: 20,bottom: 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              trailing: Icon(Icons.star,color: Colors.amber,),
              title: Text('B Cooper'),
              subtitle: Text('Available now'),
            ),
            color: Colors.white,
          ),
          Card(
            //margin: EdgeInsets.only(left: 20,right: 20,bottom: 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              trailing: Icon(Icons.star,color: Colors.amber,),
              title: Text('C Cooper'),
              subtitle: Text('Available now'),
            ),
            color: Colors.white,
          ),
          Card(
            //margin: EdgeInsets.only(left: 20,right: 20,bottom: 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              trailing: Icon(Icons.star,color: Colors.amber,),
              title: Text('D Cooper'),
              subtitle: Text('Available now'),
            ),
            color: Colors.white,
          ),
          Card(
            //margin: EdgeInsets.only(left: 20,right: 20,bottom: 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              trailing: Icon(Icons.star,color: Colors.amber,),
              title: Text('E Cooper'),
              subtitle: Text('Available now'),
            ),
            color: Colors.white,
          ),

        ],
      ),
    );
  }
}
