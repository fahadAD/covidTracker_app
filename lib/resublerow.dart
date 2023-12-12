import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Reasuable_Widgets extends StatelessWidget {
  String tittle,value;
    Reasuable_Widgets({super.key,required this.tittle,required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 5.0),      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Text(tittle,style: TextStyle(fontWeight: FontWeight.bold,)),
              Text(value,),
          ],),
SizedBox(height: 5,),
          Divider(),
        ],
      ),
    );
  }
}

