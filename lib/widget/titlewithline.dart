import 'package:flutter/material.dart';
class TitleWithLine extends StatelessWidget {
  final String title;
  TitleWithLine(this.title);
  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Expanded(
            child: Divider(
              color: Theme.of(context).primaryColor,
            )),
      ],
    );
  }
}
