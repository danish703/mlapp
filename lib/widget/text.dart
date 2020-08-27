import 'package:flutter/material.dart';
Widget textbox({String text}){
  return Container(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
      ),
      textAlign: TextAlign.justify,
    ),
  );
}