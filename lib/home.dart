import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/show%20dedail.dart';
import 'package:untitled/video%20player.dart';

import 'class.dart';
import 'colors..dart';
import 'dedail.dart';

class asd extends StatefulWidget {
  const asd({super.key});

  @override
  State<asd> createState() => _asdState();
}

class _asdState extends State<asd> {
  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);

  var size, height, width;

  // int _index=0;
  int currentstate = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme:_switch?_dark:_light,
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: size = MediaQuery.of(context).size.height * 0.5,
              width: size = MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/jio.png')),
                  shape: BoxShape.circle),
            ),
          ),
          title:  Row(
            children: [
              Text('THEAME ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Switch(
                value: _switch,
                onChanged: (_newvalue){
                  setState(() {
                    _switch=_newvalue;
                  });
                },
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                size: 30,
                //color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child:
                  CarouselSlider.builder(
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentstate = index;
                          });
                        },
                        height: MediaQuery.of(context).size.height * 0.35,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        initialPage: 1,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeFactor: 0.3,
                        reverse: true,
                        autoPlay: true,
                        //onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(hom[itemIndex].image),
                                  fit: BoxFit.fill)),
                        );
                      }),
                ),
                Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("SUBSCRIBE"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: b3,
                          minimumSize: Size(30, 40),
                          side: BorderSide(color: b3, width: 2)),
                    )),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              DotsIndicator(
                //decorator: DotsDecorator(color:Theme.of(context).colorScheme.primary ),
                dotsCount: hom.length,
                position: currentstate,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Hot Right Now ",
                  style: TextStyle(
                      //color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => show()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.33,
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/vickram.jfif'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Top Sport Picks  ",
                  style: TextStyle(
                     // color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container
                (
                height: MediaQuery.of(context).size.height * 0.23,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: spo.length,
                  itemBuilder: (BuildContext con, index) {
                    return Padding(
                      padding: const EdgeInsets.all(9),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: MediaQuery.of(context).size.width * 0.50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(spo[index].image),
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Fresh Episodes ",
                  style: TextStyle(
                     // color:Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.23,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mov.length,
                  itemBuilder: (BuildContext con, index) {
                    return Padding(
                      padding: const EdgeInsets.all(9),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ded(jump: mov[index])));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.18,
                              width: MediaQuery.of(context).size.width * 0.50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(mov[index].image),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "MOVIE ",
                  style: TextStyle(
                 //    color:Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.99,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/aa2.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
