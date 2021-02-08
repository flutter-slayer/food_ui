import 'package:flutter/material.dart';
import 'package:food_ui/components/AddButton.dart';
import 'package:food_ui/components/rating.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        children: [

          Container(
            margin: EdgeInsets.only(top: 25),
            height: MediaQuery.of(context).size.height*0.2,
            width: MediaQuery.of(context).size.width*0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow:[
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                ),
                BoxShadow(
                  color:Color(0xfffafafa),
                  spreadRadius: -2.0,
                  blurRadius: 20,
                ),
              ],
            ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:15,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pizza",style: GoogleFonts.montserrat(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.015 ,),
                        Text("Pizza with mashrooms",style: GoogleFonts.montserrat(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.015 ,),
                        Text("10dt",style: GoogleFonts.montserrat(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),

                      ],
                    ),
                  ),


                  Positioned(
                    top: MediaQuery.of(context).size.height*0.15,
                      left:MediaQuery.of(context).size.height*0.02,
                      child: Rating()),
                  Positioned(
                      left:MediaQuery.of(context).size.width*0.75,
                      top: MediaQuery.of(context).size.height*0.13,
                      child: AddButton()),
                ],

              )
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height*0.12,
            left:MediaQuery.of(context).size.width*0.55,
            child: Image.asset(
                'images/3.png',
                width: MediaQuery.of(context).size.width*0.4,
                height: MediaQuery.of(context).size.height*0.18,
                fit:BoxFit.fill

            ),
          ),
        ],
      ),
    );
  }
}
