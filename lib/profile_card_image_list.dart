import 'package:flutter/material.dart';
import 'profile_card_image.dart';

class ProfileCardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 235.0),
      //height: 500.0,
      child: ListView(
        //padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ProfileCardImage("assets/img/beach.jpeg", "Varuna Yasas",
              "Ipsum is simply dummy te", "Steps: 1234567"),
          ProfileCardImage("assets/img/cliente1.jpg", "Anahí Salgado",
              "2 review · 5 photos", "Steps: 7234567"),
          ProfileCardImage("assets/img/cliente2.jpg", "Gissele Thomas",
              "Lorem Ipsum is simply dummy", "Steps: 8234567"),
          ProfileCardImage("assets/img/cliente3.jpg", "Gissele Thomas",
              "is simply dummy te", "Steps: 9234567"),
          ProfileCardImage("assets/img/cliente4.jpg", "Gissele Thomas",
              "Lorem Lorem Ipsum is simply dummy te", "Steps: 2434567"),
        ],
      ),
    );
  }
}
