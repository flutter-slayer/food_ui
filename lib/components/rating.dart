import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(children: [
      Icon(Icons.star_sharp, color: Colors.amber,size: 30,),
      Icon(Icons.star_sharp, color: Colors.amber,size: 30,),
      Icon(Icons.star_sharp, color: Colors.amber,size: 30,),
      Icon(Icons.star_sharp, color: Colors.amber,size: 30,),
      Icon(Icons.star_sharp, color: Colors.amber,size: 30,),


    ]));
  }
}
