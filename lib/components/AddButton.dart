import 'package:flutter/material.dart';
import 'package:food_ui/screens/DetailsPage.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
        },
          child: Icon(Icons.add_circle,size: 45,color: Colors.black,)),
    );
  }
}
