import 'package:flutter/material.dart';

class SearchBAR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow:[
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          BoxShadow(
            color:Color(0xffFAFAFA),
            spreadRadius: -1.0,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,),
            child: Icon(Icons.search,color: Colors.grey,size: 35,),
          ),
          SizedBox(width: 30,),
          Container(
            width: 200,
            child: TextField(decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search'
            ),),
          )
        ],
      ),
    );
  }
}
