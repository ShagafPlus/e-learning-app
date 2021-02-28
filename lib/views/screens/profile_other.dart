import 'package:flutter/material.dart';

class OtherProfile extends StatelessWidget {
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
                    'Favorite Tutors',
                    style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(height: 5.0,),
                ListTile(
                  title: Text(
                    'Chat History',
                    style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

                SizedBox(height: 5.0,),
                ListTile(
                  title: Text(
                    'Messages',
                    style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.bold, color: Colors.black87
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
