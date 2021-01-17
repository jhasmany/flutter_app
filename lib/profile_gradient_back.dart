import 'package:flutter/material.dart';

class ProfileGradientBack extends StatelessWidget {
  String title = "Popular";

  ProfileGradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FondoHeader(this.title);
  }
}

class FondoHeader extends StatelessWidget {
  String title = "Popular";
  FondoHeader(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          height: 300.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.settings, color: Colors.white),
                  ])),
          alignment: Alignment(-0.9, -0.7),
        ),
        fondo()
      ],
    );
  }
}

class fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 300,
        color: Color(0xFFFFFFFF).withOpacity(0.07),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(0, size.height);
    // path.lineTo(size.width / 4, size.height);
    // path.quadraticBezierTo(size.width / 3, size.height / 3, size.width, 0);

    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 4, size.height);
    path.quadraticBezierTo(size.width / 3, size.height / 3, size.width, 0);

    // path.lineTo(0, size.height - 80);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height, size.width, size.height - 80);
    // path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
