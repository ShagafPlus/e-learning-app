import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manahil/views/widgets/appTheme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 15, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.only(bottom: 5.0),
              title: Text(
                'Course Name',
                style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white
                ),
              ),
              subtitle: Text(
                'your current score is',
                style: TextStyle(
                    fontSize: 17, color: Colors.white
                ),
              ),
              trailing: CircularPercentIndicator(
                radius: 55.0,
                lineWidth: 5.0,
                percent: 0.27,
                center: new Text("27%",
                  style: TextStyle(
                    fontSize: 17, color: Colors.white
                ),),
                progressColor: appTheme().backgroundColor,
              )
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 15, bottom: 15),
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
                  leading: SvgPicture.asset('assets/images/google.svg'),
                  title: Text(
                    '25 lessons completed',
                    style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                ListTile(
                  leading: SvgPicture.asset('assets/images/google.svg'),
                  title: Text(
                    '8 achievements earned',
                    style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                ),

                SizedBox(height: 5.0,),
                ListTile(
                  leading: SvgPicture.asset('assets/images/google.svg'),
                  title: Text(
                    '12 questions answered',
                    style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold, color: Colors.black87
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
