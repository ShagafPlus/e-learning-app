

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manahil/views/utils/theme.dart';

class MediaPickDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Choose Image',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'GeDinarOne_Medium',
                            color: Colors.black)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                ListTile(
                  onTap: () async {
                    var file = await ImagePicker.pickImage(
                        source: ImageSource.camera, imageQuality: 50);
                    Navigator.pop(context, file);
                  },
                  title: Text('Camera',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'GeDinarOne_Medium',
                          color: appTheme().hintColor)),
                  trailing: Icon(
                    Icons.camera_alt,
                    color: appTheme().primaryColor,
                  ),
                ),
                ListTile(
                  onTap: () async {
                    var file = await ImagePicker.pickImage(
                        source: ImageSource.gallery, imageQuality: 50);
                    Navigator.pop(context, file);
                  },
                  title: Text('Media',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'GeDinarOne_Medium',
                          color: Colors.black)),
                  trailing: Icon(
                    Icons.image,
                    color: appTheme().primaryColor,
                  ),
                ),
                FlatButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'GeDinarOne_Medium',
                          color: Colors.black)),
                )
              ],
            ),
          )),
    );
  }
}
