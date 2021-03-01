import 'package:flutter/material.dart';
import 'package:manahil/views/widgets/loading_widget.dart';


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Loading(),
      ),
    );
  }
}
