import 'package:flutter/material.dart';

class ProfileReview extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String email = "kiyosaki@";

  ProfileReview(this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {
    final userEmail = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          color: Color(0xFFFFFFFF).withOpacity(0.8),
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 18.0,
              fontWeight: FontWeight.bold)),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userEmail],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
