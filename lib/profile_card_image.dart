import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class ProfileCardImage extends StatelessWidget {
  String pathImage = "assets/img/beach.jpeg";
  String name = "Varuna Yasas";
  String details = "1 review · 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  ProfileCardImage(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.orange[400],
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w500),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 17.0, fontWeight: FontWeight.w600),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final cardUserDetails =
        Stack(alignment: Alignment(0.9, 1.2), children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 92),
        padding: EdgeInsets.only(top: 8),
        height: 80.0,
        width: 220.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: userDetails,
      ),
      FloatingActionButtonGreen()
    ]);

    final card = Container(
      height: 160.0,
      width: 310.0,
      margin: EdgeInsets.only(bottom: 56),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0, 0),
      children: <Widget>[
        card,
        cardUserDetails
        //FloatingActionButtonGreen(),
      ],
    );
  }
}
