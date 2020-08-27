import 'package:flutter/material.dart';
class Reference extends StatelessWidget {
  final List<String> url;
  Reference({this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.green,
      ),
      child: Column(
        children: url.map((e) => Text(e,style: TextStyle(color: Colors.white),)).toList(),
      )
    );
  }
}
