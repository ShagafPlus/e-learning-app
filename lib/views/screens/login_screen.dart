import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:manahil/views/widgets/appTheme.dart';

import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: Stack(children: <Widget>[
        Title(),
        TextBody(),
       // SizedBox(height: 35,),
        CardBody(),
        Positioned(top: 40, left: 0, child: _backButton()),
      ],),
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
            SizedBox(width: 10,),
            Text('Back',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,
                    color: appTheme().primaryColorDark))
          ]))
  );
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 25, top: 85, bottom: 10),
            child: Column(
              children: [
                Text('Keep Connected', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),

        ]),

    );
  }
}

class TextBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 25, top: 120, bottom: 10),
          child: Column(
            children: [
              Text('Enter your Email address and account password\n to get access your account', style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),),
            ],
          ),
        ),

      ]),
    );
  }
}


class CardBody extends StatefulWidget {
  @override
  _CardBodyState createState() => _CardBodyState();
}

class _CardBodyState extends State<CardBody> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 210,left: 20,right: 20),
      child: SingleChildScrollView(
        child: Column(children: [
          Card(
            color: appTheme().backgroundColor,
            //color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 8.0,
            child: Container(
              height: deviceSize.height * 0.25,
              width: deviceSize.width * 0.88,
              //padding: const EdgeInsets.only(sleft: 15,right: 0),
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        //spadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        //color: appTheme().backgroundColor,
                        // padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            TextFormField(
                              enabled: true,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  fillColor: appTheme().backgroundColor,
                                  suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                  labelText: 'Email Address'
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  obscureText: true,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    //  prefixIcon: Icon(Icons.check, color: Colors.green,),
                                    labelText: 'Password',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Row(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.centerRight,
            child: Text('Remember me ?',
                style:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          ),
          SizedBox(width: 150,),
          InkWell(onTap: (){},
            child: Text('Forgot Password ?',
                style:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          ),
        ],),
      RaisedButton(
              color: appTheme().primaryColorDark,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
              onPressed: (){}, //main page
              child: Text('Login',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          SizedBox(height: 10,),
          RaisedButton(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 140),
            onPressed: (){
              Navigator.of(context).pushNamed(SignUpScreen.routeName);
            },
            child: Text('Sign Up',
                style: TextStyle(
                    fontSize: 20, color: Colors.black)),
          ),
          SizedBox(height: 10,),
          Text('Or Continue with'),

          

        ],)
      ),

    );
  }
}
