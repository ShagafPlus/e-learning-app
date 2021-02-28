import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:manahil/views/widgets/appTheme.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFoldingCube(
        color: appTheme().primaryColor,
        size: 70.0,
      ),
    );
  }
}
