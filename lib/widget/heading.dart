import 'package:flutter/material.dart';
class Heading extends StatelessWidget {
  final String title;
  Heading({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
