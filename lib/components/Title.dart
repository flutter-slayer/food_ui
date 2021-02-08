import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTitle extends StatelessWidget {
  String txt1;
  String txt2;
  double size;
  FoodTitle({this.txt1,this.txt2,this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
      text: TextSpan(
      text: txt1 + '\n',
      style:GoogleFonts.montserrat(color: Colors.black,fontSize: size,fontWeight: FontWeight.bold),
      children: <TextSpan>[
    TextSpan(text: txt2,
      style: GoogleFonts.montserrat(color: Colors.black,fontSize: size,fontWeight: FontWeight.w300)
    )])));
  }
}
