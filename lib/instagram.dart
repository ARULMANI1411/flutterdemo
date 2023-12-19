import 'package:flutter/material.dart';

import 'colors..dart';
class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
title: Row(
  children: [
        Text('AABBcc 0033',style: TextStyle(fontWeight: FontWeight.bold),),
    Icon(Icons.arrow_drop_down,size: 30,)
  ],
),
  actions: [
    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Icon(Icons.add_box_outlined,size: 30,),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(Icons.menu,size: 30,),
    )
  ],
),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
          return [
            SliverAppBar(
              toolbarHeight: 330,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration:BoxDecoration(
                              shape: BoxShape.circle,
                              image:DecorationImage(image: AssetImage('assets/earth.png'),
                                  fit:BoxFit.fill )
                          ) ,
                        ),
                        SizedBox(width: 40,),
                        RichText(text:
                        TextSpan(
                            text: '11\n',style: TextStyle(fontSize: 18,
                            fontWeight:FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: 'Posts',style: TextStyle(fontSize: 11)
                              ),
                            ]
                        ),),
                        SizedBox(width: 40,),
                        RichText(text:
                        TextSpan(
                            text: '111\n',style: TextStyle(fontSize: 18,
                            fontWeight:FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: 'Follower',style: TextStyle(fontSize: 11)
                              ),
                            ]
                        ),),
                        SizedBox(width: 40,),
                        RichText(text:
                        TextSpan(
                            text: '111\n',style: TextStyle(fontSize: 18,
                            fontWeight:FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: 'Following',style: TextStyle(fontSize: 11)
                              ),
                            ]
                        ),),
                      ],
                    ),
                    Container(
                      height:120 ,
                      child: Row(
                        children: [
                          RichText(text: TextSpan(
                              text: 'AAA BBB CCC\n',style: TextStyle(
                            fontSize: 15,),
                              children: [
                                TextSpan(
                                  text: 'DDD eee',style: TextStyle(
                                  fontSize: 13,color: g,),
                                ),
                                TextSpan(
                                  text: 'DDdd\n',style: TextStyle(
                                  fontSize: 15,color: h,),
                                ),
                                TextSpan(
                                  text: 'aaaaaaaaaaaaaa\n',style: TextStyle(
                                  fontSize: 15,color:Colors.black,),
                                ),
                                TextSpan(
                                  text: 'aaaaaaaaaaaaaa\n',style: TextStyle(
                                  fontSize: 17,color: b3,),
                                ),
                                TextSpan(
                                  text: 'aaaaaaaaaaaaaa\n',style: TextStyle(
                                  fontSize: 15,color:Colors.black,),
                                ),
                                TextSpan(
                                  text: 'Follwed by aaaaaaa,bbbbbbb',style: TextStyle(
                                  fontSize: 13,color:Colors.black,),
                                ),
                              ]
                          )),

                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          ElevatedButton(onPressed:(){}, child: Text('Etid profile',style:
                          TextStyle(color: Colors.black),),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: n,minimumSize: Size(150, 40),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                            ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(onPressed:(){}, child: Text('share profile',style:
                          TextStyle(color: Colors.black),),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: n,minimumSize: Size(150, 40),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius
                                    .circular(10))
                            ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(onPressed:(){}, child: Container(child: Icon(Icons.person_add,color: Colors.black,)),

                            style: ElevatedButton.styleFrom(
                                backgroundColor: n,fixedSize: Size(7, 40),
                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 98,
                      child: ListView.builder(

                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (BuildContext con,index)
                        {
                          return Padding(
                            padding: const EdgeInsets.all(9),
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(border: Border.all(width: 3,color: h),
                                    image: DecorationImage(image: AssetImage("assets/a3.jpg"),
                                      fit: BoxFit.fill,),shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              bottom:
              PreferredSize(
                  preferredSize: const Size.fromHeight(48),
                  child: Container(
                          height: 40,
                    decoration: BoxDecoration(color: m),
                    child:  TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: h,
                      unselectedLabelColor: f,
                      indicatorColor: b3,
                      indicator: BoxDecoration(color: n,),
                      tabs:
                      [
                        Tab(
                          icon: Icon(Icons.ac_unit),
                        ),
                        Tab(
                          icon: Icon(Icons.video_settings_outlined),
                        ),
                        Tab(
                          icon: Icon(Icons.perm_contact_cal_outlined),
                        ),
                      ],
                      dividerColor: k,
                    ) ,
                  )
              ),

            ),

          ];
        },
            body:
            TabBarView(
              children: [
                Center(child:  Container(
                  height: 500,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      mainAxisExtent: 130,
                      crossAxisCount: 3, // number of items in each row
                      mainAxisSpacing: 1, // spacing between rows
                      crossAxisSpacing: 1, // spacing between columns
                    ),
                    padding: EdgeInsets.all(8.0), // padding around the grid
                    itemCount:12, // total number of items
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height:130,
                            width: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(image:AssetImage("assets/a4.jpg"),
                                    fit: BoxFit.fill )
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                ),
                Center(child:  Container(
                  height: 500,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      mainAxisExtent: 130,
                      crossAxisCount: 3, // number of items in each row
                      mainAxisSpacing: 1, // spacing between rows
                      crossAxisSpacing: 1, // spacing between columns
                    ),
                    padding: EdgeInsets.all(8.0), // padding around the grid
                    itemCount:12, // total number of items
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height:130,
                            width: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(image:AssetImage("assets/a3.jpg"),
                                    fit: BoxFit.fill )
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                ),
                Center(child:  Container(
                  height: 500,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      mainAxisExtent: 130,
                      crossAxisCount: 3, // number of items in each row
                      mainAxisSpacing: 1, // spacing between rows
                      crossAxisSpacing: 1, // spacing between columns
                    ),
                    padding: EdgeInsets.all(8.0), // padding around the grid
                    itemCount:12, // total number of items
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height:130,
                            width: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(image:AssetImage("assets/earth.png"),
                                    fit: BoxFit.fill )
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}


