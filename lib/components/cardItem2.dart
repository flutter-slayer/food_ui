import 'package:flutter/material.dart';
import 'package:food_ui/components/AddButton.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem2 extends StatelessWidget {

  String imagePath;
  String title;
  String description;
  String price;

  CardItem2({this.imagePath,this.title,this.description,this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.0,
      width: MediaQuery.of(context).size.width*0.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
          bottomLeft: Radius.circular(50.0),

        ),
        color: Color.fromRGBO(251, 204, 39, 0.48),
        ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          Image.asset(
            imagePath,
            height:100,
            width: 70,
          ),
          Text(
              title,
              style:GoogleFonts.montserrat(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0,),
          Text(
              description,
            style:GoogleFonts.montserrat(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w300),

          ),
          SizedBox(height: 10.0,),
          Text(
              price,
            style:GoogleFonts.montserrat(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),

          ),
          SizedBox(height: 10.0,),
          AddButton(),


        ],

      ),
    );
  }
}
