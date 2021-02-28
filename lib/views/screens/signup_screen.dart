import 'package:flutter/material.dart';
import 'package:manahil/views/screens/login_screen.dart';
import 'package:manahil/views/widgets/appTheme.dart';


class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        SignUpTitle(),
       SignUpTextBody(),
        SignUpCardBody(),
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



class SignUpTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 25, top: 85, bottom: 10),
          child: Column(
            children: [
              Text('Welcome here', style: TextStyle(
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


class SignUpTextBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 25, top: 120, bottom: 10),
          child: Column(
            children: [
              Text('After this side you will able to access lot of\n Knowledge material', style: TextStyle(
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

class SignUpCardBody extends StatefulWidget {
  @override
  _SignUpCardBodyState createState() => _SignUpCardBodyState();
}

class _SignUpCardBodyState extends State<SignUpCardBody> {
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
                height: deviceSize.height * 0.40,
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
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    fillColor: appTheme().backgroundColor,
                                    suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                    labelText: 'Your Name',
                                  hintText: 'Name'
                                ),
                              ),
                              TextFormField(
                                enabled: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    fillColor: appTheme().backgroundColor,
                                    suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                    labelText: 'Email Address',
                                  hintText: 'email@egmail.com'
                                ),
                              ),
                              TextFormField(
                                enabled: true,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    fillColor: appTheme().backgroundColor,
                                    suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                    labelText: 'Mobile Number',
                                    hintText: '2499xxxxxxxxx'
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

            SizedBox(height: 20,),
            RaisedButton(
              color: appTheme().primaryColorDark,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
              onPressed: (){},
              child: Text('Sign Up',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 100),
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Already Member?'),
                  SizedBox(width: 10,),
                  InkWell(onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                    child: Text('Login',
                        style:
                        TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold,
                        color: appTheme().primaryColorDark)),
                  ),
                ],
              ),
            ),
          ],)
      ),

    );
  }
}
