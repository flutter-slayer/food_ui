import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {

 String categoryItem;
 CategoryItem({this.categoryItem});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.5,
      width: MediaQuery.of(context).size.width*0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
       color: Color(0xffFBCC27),
      ),
      child: Center(
        child:
        Text(categoryItem,style: GoogleFonts.montserrat(fontSize: 15,color: Colors.black),),
      ),
    );
  }
}
