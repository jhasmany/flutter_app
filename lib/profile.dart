import 'package:flutter/material.dart';
import 'profile_review.dart';

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build

    final icon_settings = Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
      child: Icon(Icons.settings, color: Colors.blue[600]),
    );

    final icon_bookmark_border = Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.bookmark_border, color: Colors.blue[600]),
    );

    final icon_add = Container(
      width: 48,
      height: 48,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.add, color: Colors.blue[600]),
    );

    final icon_mail = Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.mail, color: Colors.blue[600]),
    );

    final icon_person = Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.person, color: Colors.blue[600]),
    );

    final opcionMenus = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        icon_settings,
        icon_bookmark_border,
        icon_add,
        icon_mail,
        icon_person
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 70.0),
            child: ProfileReview(
              "assets/img/kiyosaki.jpg",
              "Robert Kiyosaki",
              "robert@gmail.com",
            )),
        Container(
            margin: EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: opcionMenus)
      ],
    );
  }
}
