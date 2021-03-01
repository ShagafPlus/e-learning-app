import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/appTheme.dart';



class ChoosePlan extends StatefulWidget {
  static const routeName = '/ChoosePlan';
  @override
  _ChoosePlanState createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff298EBD),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 160.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Choose\n A Plan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )
                  ),
                  background: SvgPicture.asset(
                    "assets/images/group_9710.svg",
                    fit: BoxFit.cover,
                  )),
            ),

          ];
        },
        body: Container(
          // margin: EdgeInsets.only(top: 40.0),
          decoration: BoxDecoration(
              color: appTheme().backgroundColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0))),
          child: ListView(
            children: [
              item(),
              item(),
              item(),
              continueWithPaymentButton(),
            ],
          ),
        ),
      ),

    );
  }
}

Widget item() {
  return Center(
    child: GestureDetector(
      child: Card(
        margin: EdgeInsets.all(5.0),
        borderOnForeground: true,
        shadowColor: appTheme().primaryColor,
        child: ListTile(
          contentPadding:
              EdgeInsets.only(left: 35.0, right: 35.0, bottom: 10.0, top: 10.0),
          title: Text(
              'title',
              style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold, color: Colors.black87,),),
          subtitle: Text(
            'subtitle',
            style: TextStyle(fontSize: 17, color: Color(0xff4C93FF),),),
          trailing: Text(
              '\$ 145',
              style: TextStyle(fontSize: 22, color: Color(0xff0253B3),),),
        ),
      ),
    ),
  );
}

  Widget continueWithPaymentButton() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(50),
        child: RaisedButton.icon(
          label: Text('Continue With Payment',
              style: TextStyle(fontSize: 17, color: Colors.white,)),
          icon:  Icon(Icons.arrow_back, color: appTheme().backgroundColor),
          color: appTheme().primaryColorDark,
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          onPressed: (){},
        ),
      ),
    );
}

