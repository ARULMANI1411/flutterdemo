import 'package:flutter/material.dart';

import 'class.dart';
import 'colors..dart';
import 'ott.dart';

class spor extends StatefulWidget {
  const spor({super.key});

  @override
  State<spor> createState() => _sporState();
}

class _sporState extends State<spor> {
  bool isDesktop(BuildContext context)=>MediaQuery.of(context).size.width>=600;
  bool isMobile(BuildContext context)=>MediaQuery.of(context).size.width<600;

  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);

  var size, height, width;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _switch ? _dark : _light,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => ott()));
                },
              ),
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      height: size = MediaQuery.of(context).size.height * 0.1,
                      width: size = MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/jio.png')),
                          shape: BoxShape.circle),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("SUBSCRIBE"),
                    style: ElevatedButton.styleFrom(side: BorderSide(width: 2)),
                  ),
                  Switch(
                    value: _switch,
                    onChanged: (_newvalue) {
                      setState(() {
                        _switch = _newvalue;
                      });
                    },
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    Icons.search,
                    size: 33,
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
              children: [
                Text(
                  'For you',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.33,
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                      color: l1, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        width: MediaQuery.of(context).size.width * 0.99,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLMZW188Cs2oKxtb4-TuudJQnuPWaJleiFTw&usqp=CAU'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.09,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/jio.png')),
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'IND VS AUS\n',
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: 'cricket ka naya share')
                                ]),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("KNOW MORE"),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(60, 50),
                                backgroundColor: Colors.transparent,
                                foregroundColor: b0,
                                side: BorderSide(color: b0, width: 2)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Top Sport Picks',
                  style: TextStyle(
                      //color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: on.length,
                    itemBuilder: (BuildContext con, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              width: MediaQuery.of(context).size.width * 0.50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(on[index].image),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'IND VS AUS -T20Is schedule',
                  style: TextStyle(
                      //color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: MediaQuery.of(context).size.height *.28,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext con, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                color: k1,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.02,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: Text(
                                      to[index].text,
                                      style: TextStyle(
                                          color: b1,
                                          fontSize: MediaQuery.of(context).size.height* 0.015,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://hindustantimes.com/static-content/1y/cricket-logos/teams/IND.png?2'),
                                                fit: BoxFit.fill),
                                            shape: BoxShape.circle),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      Text(
                                        'IND',
                                        style: TextStyle(
                                            // color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://crictoday.com/wp-content/uploads/2022/03/australia-7-1.png'),
                                                fit: BoxFit.fill),
                                            shape: BoxShape.circle),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      Text(
                                        'AUS',
                                        style: TextStyle(
                                            // color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    to[index].text2,
                                    style: TextStyle(
                                        // color: b1,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider(
                                    color: n,
                                    thickness: 1,
                                    height: 10,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.17,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: Center(
                                          child: Text(
                                            'UP COMMING',
                                            style: TextStyle(
                                                // color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                      ),
                                      Text(
                                        'SHEDULE',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Sport & Fun',
                  style: TextStyle(
                      // color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: on.length,
                    itemBuilder: (BuildContext con, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: MediaQuery.of(context).size.width * 0.75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(on[index].image),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "SPORT",
                    style: TextStyle(
                        //   color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOtLdKWHzs24bv5wFw70iG_qK7kQPZ3srygQ&usqp=CAU'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
          )
        ));
  }
}
