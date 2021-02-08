import 'package:flutter/material.dart';
import 'package:food_ui/components/categoryItem.dart';

class CategoryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView(
        scrollDirection:Axis.horizontal ,
        children: [
          CategoryItem(categoryItem: 'Pizzas',),
          SizedBox(width: 10,),
          CategoryItem(categoryItem: 'Sea food',),
          SizedBox(width: 10,),
          CategoryItem(categoryItem: 'Soft drinks',),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
