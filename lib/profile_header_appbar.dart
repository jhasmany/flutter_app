import 'package:flutter/material.dart';
import 'profile_gradient_back.dart';
import 'profile.dart';

class ProfileHeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[ProfileGradientBack("Profile"), Profile()],
    );
  }
}
