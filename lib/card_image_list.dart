import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 310.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/beach.jpeg"),
          CardImage("assets/img/cliente1.jpg"),
          CardImage("assets/img/cliente2.jpg"),
          CardImage("assets/img/cliente3.jpg"),
          CardImage("assets/img/cliente4.jpg"),
        ],
      ),
    );
  }
}
