import 'package:flutter/material.dart';

void showInSnackBar(String value, dynamic scaffoldKey, Color color,
    GlobalKey<ScaffoldState> key) {
  key.currentState.showSnackBar(new SnackBar(
    content: Container(
      margin: EdgeInsets.all(2.0),
     // margin: EdgeInsetsResponsive.only(bottom: 20), as reference
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: color,
  ));
}
