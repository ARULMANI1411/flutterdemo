import 'package:flutter/material.dart';
import 'package:untitled/class.dart';

import 'colors..dart';
class spoti extends StatefulWidget {
  const spoti({super.key});

  @override
  State<spoti> createState() => _spotiState();
}

class _spotiState extends State<spoti> {
  int _index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
    {
      return[
        SliverAppBar(
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          pinned: true,
          expandedHeight: 430,
          stretch: true,
          titleSpacing: 200,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [k,l],
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
            child: FlexibleSpaceBar(
              title: Text('A.R.Rahaman Mix'),
              background: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          SizedBox(width: 310,height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextFormField(decoration: InputDecoration(
                                  hintText: 'Find in playlist',
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(Icons.search,color: Colors.white,),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.2),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color:Colors.white.withOpacity(0.2) )
                                ),
                              ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:Colors.white.withOpacity(0.2),
                              ),
                              child: Center(child: Text("Sort",style: TextStyle(color:Colors.white,fontSize: 15 ),)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/earth.png')
                          ),
                            boxShadow: [
                              BoxShadow(
                                  color: l,
                                  offset: Offset(0.2, 0.2),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0
                              )
                            ]
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              stretchModes: [
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
            ),
          ),

        ),
      ];
    },
          body: SingleChildScrollView(
           child:Container(
             color: l,
                child: Column(
                  children: [
                    RichText(text: TextSpan(
                      text: 'Sid Sriram, santhos narayanan',
                      style: TextStyle(color: a2,fontSize: 15,
                          decoration: TextDecoration.underline,),
                      children: [
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(color: k),
                        ),
                        TextSpan(
                          text: 'Benny Dayal',
                          style: TextStyle(color: a2),
                        ),
                      ]
                    ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 40,
                            width: 40,
                   decoration:BoxDecoration(
                           image: DecorationImage(image: AssetImage('assets/earth.png'),
                           fit: BoxFit.fill,),
                           shape: BoxShape.circle
                   ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Spotify",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18
                          ),),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 310),
                      child: Text('3h 43min',style: TextStyle(color: k,fontSize: 17,fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.music_note_outlined,color: Colors.white,size: 30,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.arrow_circle_down_sharp,color: k,size: 30,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.more_vert,color: k,size: 30,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Icon(Icons.double_arrow_outlined,color: k,size: 30,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.play_circle_sharp,color: k,size: 50,),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: MediaQuery.of(context).size.height*99,
                      color: l,
                      child: ListView.builder(
                         itemCount: 8 ,
                        itemBuilder: (BuildContext context, int index)
                        {
                          return
                              Container(
                                height:90,
                                width: double.infinity,
                                child: ListTile(
                                  leading: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                               image: DecorationImage(image: AssetImage(lis[index].image),
                                 fit: BoxFit.fill),
                                    ),
                                  ),
                                  title: Text(lis[index].text,style:
                                    TextStyle(color: Colors.white,fontSize: 19),),
                                  subtitle: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: k,
                                        borderRadius: BorderRadius.circular(3)),
                                        child: Center(
                                          child: Text('LYRICS',style: TextStyle(color: l,
                                          fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:5),
                                        child: Text(lis[index].text2,style: TextStyle(
                                          color: n,fontSize: 13
                                        ),),
                                      )
                                    ],
                                  ),
                                  trailing: Icon(Icons.more_vert_outlined,color: Colors.white70,),
                                ),
                              );
                        },

                      ),
                    )
                  ],
                ),

           ) ,
        ),
        ),
      backgroundColor:l ,
    );
  }
}
