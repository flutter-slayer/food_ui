import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/components/AppBar.dart';
import 'package:food_ui/components/Title.dart';
import 'package:food_ui/components/orderButton.dart';
import 'package:food_ui/components/rating.dart';
import 'package:food_ui/components/relatedItem.dart';
import 'package:food_ui/components/textInfo.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String dropdownValue = 'Medium';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppBAR(
                widget: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.black,),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,top: 4,bottom: 4),
                        child: Icon(Icons.arrow_back_ios,size: 25,),
                      )),
                ),
                icon: Icon(Icons.stars,color: Colors.amber,size: 40,),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FoodTitle(txt1: 'pizza',txt2: 'Napoletana',size: 30,),
            ),
            SizedBox(height: 10,),
            Stack(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInfo(label: 'Size',info: Container(
                        decoration: BoxDecoration(
                          //color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              //elevation: 16,
                              style: TextStyle(color: Colors.black),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              items: <String>['Medium','Small','Large']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value,style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w300),),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(height: 30,),
                      TextInfo(label: 'Price',info: Text('24 DT',style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                      SizedBox(height: 30,),

                      TextInfo(label: 'Delivery in',info:Text('30 minutes',style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Rating(),
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 160,
                    child: Image.asset('images/5.png',height: 270,width: 270,)),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 8,bottom: 8),
              child: Text('Related Item',style: GoogleFonts.montserrat(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 8,right: 18),
              child: RelatedItem(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 8,right: 18,bottom: 10),
              child: OrderButton(),
            ),
          ],
        ),
      ),
    );
  }
}
