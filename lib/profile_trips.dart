import 'package:flutter/material.dart';
import 'profile_header_appbar.dart';
import 'profile_card_image_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[ProfileHeaderAppBar(), ProfileCardImageList()],
    );
  }
}
