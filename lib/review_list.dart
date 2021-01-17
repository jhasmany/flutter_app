import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/people.jpg", "Varuna Yasas",
            "1 review · 5 photos", "There is an amazing place in Sri Lanka"),
        new Review("assets/img/ann.jpg", "Anahí Salgado", "2 review · 5 photos",
            "There is an amazing place in Sri Lanka"),
        new Review("assets/img/kiyosaki.jpg", "Gissele Thomas",
            "2 review · 2 photos", "There is an amazing place in Sr kiyosaki"),
      ],
    );
  }
}
