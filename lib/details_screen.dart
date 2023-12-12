import 'package:covid_tracker_project_api/resublerow.dart';
import 'package:flutter/material.dart';

class Details_Screen extends StatefulWidget {
  String name;
  String image;
  int total_cases, total_date, total_recover, active, critical, todayrecovered, test;
  Details_Screen({
    super.key,
    required this.name,
    required this.image,
    required this.total_cases,
    required this.total_date,
    required this.test,
    required this.todayrecovered,
    required this.total_recover,
    required this.active,
    required this.critical,
  });

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 50,),
            Stack(
             alignment: Alignment.topCenter,
                   clipBehavior: Clip.none,
                          children: [
              Padding(
                padding:   EdgeInsets.only(
                   top:  MediaQuery.of(context).size.height*.110,
                   left:  15.0,
                   right:  15.0,
                   bottom:  8.0,
                ),
                child: Card(
                 child: Column(
                   children: [

                     Reasuable_Widgets(tittle: "Total", value: "${widget.total_cases}"),
                      Reasuable_Widgets(tittle: "Recovered", value: "${widget.total_recover}"),
                     Reasuable_Widgets(tittle: "To Day Recovered", value: "${widget.todayrecovered}"),
                     Reasuable_Widgets(tittle: "Deaths", value: "${widget.total_date}"),
                     Reasuable_Widgets(tittle: "Test", value: "${widget.test}"),
                     Reasuable_Widgets(tittle: "Active", value: "${widget.active}"),
                     Reasuable_Widgets(tittle: "Critical", value: "${widget.critical}"),
                   ],
                 ),
                            ),
              ),
             CircleAvatar(
               radius: 60,
               backgroundImage: NetworkImage("${widget.image}",),

             ),
                          ],
                          ),
           ],
        ),
      ),
    );
  }
}
