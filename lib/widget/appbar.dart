import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
  Widget myAppBar({BuildContext context,String title,Widget leading,List<Widget> trailing}) {
    return AppBar(
      elevation: 0,
      title: Text(title),

      actions: trailing,
      centerTitle: true,
    );
  }