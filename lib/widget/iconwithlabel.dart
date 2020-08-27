import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ButtonWithLabel extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onPressed;
  ButtonWithLabel({this.icon,this.title,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(child: IconButton(icon:Icon(icon,color: Theme.of(context).primaryColor,size: 40,),onPressed: onPressed,)),
          SizedBox(height: 5,),
          Center(child: Text(title,style: TextStyle(fontSize: 10),)),
        ],
      ),
    );
  }
}
