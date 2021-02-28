import 'package:flutter/material.dart';
import 'package:manahil/views/widgets/appTheme.dart';



class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: Column(
        children: <Widget>[
          SettingsAppBar(),
          SettingsItems(),
        ],
      ),
    );
  }
}


class SettingsAppBar extends StatelessWidget {
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
              Row(
                mainAxisAlignment : MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 15,left: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: appTheme().primaryColorDark,
                      ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 180,bottom: 20),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
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



class SettingsItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [

          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Subscribe',
                    style: TextStyle(
                       fontSize: 17,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(height: 5.0,),
                ListTile(
                  title: Text(
                    'Help',
                    style: TextStyle(
                        fontSize: 17,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

                SizedBox(height: 5.0,),
                ListTile(
                  title: Text(
                    'Rate',
                    style: TextStyle(
                        fontSize: 17,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 17,fontWeight: FontWeight.bold, color: Colors.redAccent
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
