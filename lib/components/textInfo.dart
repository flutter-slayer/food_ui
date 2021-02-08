import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInfo extends StatelessWidget {
  String label;
  Widget info;

  TextInfo({this.label,this.info});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,style: GoogleFonts.montserrat(fontSize: 18,color: Colors.grey),),
          SizedBox(height: 8,),
          info,
        ],
      ),
    );
  }
}
