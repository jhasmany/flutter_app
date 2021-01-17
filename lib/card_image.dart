import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage = "assets/img/beach.jpeg";

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 310.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 70, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }
}
