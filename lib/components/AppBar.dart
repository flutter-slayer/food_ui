import 'package:flutter/material.dart';

class AppBAR extends StatelessWidget {
   Icon icon;
   Widget widget;
   AppBAR({this.icon,this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget,

          icon,
        ],
      ),
    );
  }
}
