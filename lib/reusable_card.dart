import 'package:flutter/material.dart';


class reusablecard extends StatelessWidget {
  reusablecard({@required this.colors, this.childcard});

  final Color colors;
  final Widget childcard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childcard,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors,
      ),
    );
  }
}