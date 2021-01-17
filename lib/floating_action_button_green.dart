import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  //bool iconFavorite = false;

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(SnackBar(
      //this.iconFavorite = true,
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: Icon(Icons.favorite_border)
        // child: !this.iconFavorite
        //     ? Icon(Icons.favorite_border)
        //     : Icon(Icons.favorite),
        );
  }
}
