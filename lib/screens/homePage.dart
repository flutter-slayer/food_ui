import 'package:flutter/material.dart';
import 'package:food_ui/components/AppBar.dart';
import 'package:food_ui/components/Title.dart';
import 'package:food_ui/components/cardItem1.dart';
import 'package:food_ui/components/cardItem2.dart';
import 'package:food_ui/components/categoryMenu.dart';
import 'package:food_ui/components/searchBar.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppBAR(widget:  CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/Avatar.png'),
              ),icon: Icon(Icons.menu_outlined,size: 35,),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FoodTitle(txt1: 'Food',txt2: 'Delivery',size: 35,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8,right: 18),
              child: SearchBAR(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categories',style: GoogleFonts.montserrat(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 8),
              child: CategoryMenu(),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8,right: 18,bottom: 4,top: 4),
              child: CardItem1(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
              child: Text('Popular',style: GoogleFonts.montserrat(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400),),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children: [
                    CardItem2(imagePath: 'images/4.png',title: 'Mixed salad',description: 'Mix vegetables',price: '15 DT',),
                    SizedBox(width: 15,),
                    CardItem2(imagePath: 'images/3.png',title: 'Quinoa salad',description: 'spicy with garlic',price: '24 Dt',),
                    SizedBox(width: 15,),
                    CardItem2(imagePath: 'images/2.png',title: 'lasagne',description: 'with parmesan ',price: '20 Dt',),
                    SizedBox(width: 15,),
                    CardItem2(imagePath: 'images/4.png',title: 'Mixed salad',description: 'Mix vegetables',price: '15 DT',),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
