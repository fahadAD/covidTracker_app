import 'dart:async';

import 'package:covid_tracker_project_api/dashbord_home.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
late final AnimationController _animationController=AnimationController(
  duration: Duration(seconds: 4),
    vsync: this)..repeat();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => DashBordScreen(),));
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
SizedBox(height: MediaQuery.of(context).size.height*0.2,),

              AnimatedBuilder(animation: _animationController,
                child: Center(
                  child: Container(
                    height: 230,
                    width: 230,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/minvirus.png"),fit: BoxFit.fill)),
                  ),
                ),
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _animationController.value*2.0*math.pi,
                    child: child,
                  );
                },),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),

          const Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Covid 19\nTracker App", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,),textAlign: TextAlign.center,),
                  Icon(Icons.mobile_friendly_rounded,color: Colors.yellowAccent,size: 30,)
                ],
              ))

            ],
          ),
        ),
      ),
    );
  }
}