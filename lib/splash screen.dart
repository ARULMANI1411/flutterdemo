import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/ott.dart';

import 'colors..dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:
      (context)=>ott(),));
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [d,e,f,g],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight)
        ),

        child: Center(
          child: Column(
            children: [
              SizedBox(height: 400,),
              Text('FUN STORE',style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,fontSize: 50,),),

            ],
          ),
        ),

      ),
    );
  }
}
