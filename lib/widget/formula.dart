import 'package:flutter/material.dart';
Widget formula(String text){
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),
    ),
  );
}