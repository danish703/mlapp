import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  final Function onPressed;

  FloatButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 32),
      child: FloatingActionButton.extended(
        elevation: 0.0,
        label: Text("Python Code"),
        onPressed: onPressed,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
