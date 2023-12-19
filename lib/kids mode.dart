import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/profile%20page.dart';

import 'class.dart';
import 'colors..dart';
class kid extends StatefulWidget {
  const kid({super.key});

  @override
  State<kid> createState() => _kidState();
}

class _kidState extends State<kid> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:
    Scaffold(
      appBar: AppBar(
        backgroundColor: l,
          leading: BackButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:
                  (context)=>profile()));
            },
          )
      ),
body:ListView(
  children: [
    CarouselSlider.builder(

        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
           //   currentstate = index;
            });
          },

          height: MediaQuery.of(context).size.height * 0.65,
          aspectRatio: 2,
          viewportFraction: 1,
          initialPage: 1,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeFactor: 0.3,
         // reverse: true,
         // autoPlay: true,
          //onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),

        itemCount: ki.length,
        itemBuilder: (BuildContext context, int itemIndex,
            int pageViewIndex) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(ki[itemIndex].image),
                      fit: BoxFit.fill)),
            ),
          );
        }),
    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text("MOVIE OF THE WEEK",style: TextStyle(fontSize: 20,color: Colors.white),),
    ),
    Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ki.length,
        itemBuilder: (BuildContext con, index) {
          return Padding(
            padding: const EdgeInsets.all(9),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:NetworkImage(ki[index].image2),
                        fit: BoxFit.fill,
                      )),
                ),
              ],
            ),
          );
        },
      ),
    ),

    Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ki.length,
        itemBuilder: (BuildContext con, index) {
          return Padding(
            padding: const EdgeInsets.all(9),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:NetworkImage(ki[index].image3),
                        fit: BoxFit.fill,
                      )),
                ),
              ],
            ),
          );
        },
      ),
    ),
  ],
) ,
    )
    );
  }
}
