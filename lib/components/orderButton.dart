import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
        
      ),
      child: Center(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Add Order',style: GoogleFonts.montserrat(fontSize: 25,color: Colors.white),),
            Icon(Icons.add_shopping_cart,color: Colors.white,size: 35,),
          ],),
        )
      ),
    );
  }
}
