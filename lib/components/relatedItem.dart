import 'package:flutter/material.dart';
import 'package:food_ui/components/AddButton.dart';
import 'package:food_ui/components/Title.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math'as math;
class RelatedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height*0.25,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
       color: Color.fromRGBO(251, 204, 39, 0.48),
      ),
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015,
            left: MediaQuery.of(context).size.width*0.02),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FoodTitle(txt1: 'Pizza',txt2: 'Napoletana',size: 25,),
                Text('large',style: GoogleFonts.montserrat(fontSize: 18,color: Colors.grey,),),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text('27 DT',style: GoogleFonts.montserrat(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.add),
                Image.asset('images/frites.png',height: 80,width: 80,),
                Image.asset('images/frites.png',height: 80,width: 80,),
                Icon(Icons.add),
                Transform.rotate(
                    angle: -math.pi/3 ,
                    child: Image.asset('images/coke.png',height: 100,width: 100,)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
