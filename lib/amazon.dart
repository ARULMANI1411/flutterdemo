import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/amazon2.dart';

import 'colors..dart';

class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       title: Container(
         height: 50,
         child: TextFormField(
      decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,size: 25,),
          suffixIcon: Icon(Icons.mic,),
          suffix: Icon(Icons.qr_code_scanner_sharp),

          filled: true,
          fillColor: Colors.white,

          hintText: "Search in Amazon.in",
          hintStyle: TextStyle(color: Colors.blueGrey),
          enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(17),borderSide: BorderSide(color: Colors.black87,width: 1),
    ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),borderSide: BorderSide(color: Colors.black87,width: 1)
          )
    ),
    ),
       ),
      backgroundColor: h,

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
            children: [

              Container(
                height: 50,
                color: i,
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.blueGrey,size: 30,),
                    Text("Deliver to Arul -Alangudi 622301",style: TextStyle(fontSize: 14),)
                  ],
                ),
              ),
              Container(
                height: 130,
                color: g,
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
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("assets/a2.jpg"),
                                 fit: BoxFit.fill,),shape: BoxShape.circle,
                                ),
                              ),

                                Text("abc",style: TextStyle(color: Colors.black,fontSize: 15),)
                            ],
                          ),
                        );
                      },
                ),
              ),
              CarouselSlider.builder( options:
              CarouselOptions(
                height: 250,
                aspectRatio: 16/9,
                viewportFraction: 1,
                initialPage: 1,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
               itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                  {
                    return Container(
                      height: 200,
                      width: 450,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/a1.jpg"),
                        fit: BoxFit.fill)
                      ),
                    );
                  }
              ),
              Container(
                height: 170,
                //color: b,
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
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("assets/a4.jpg"),
                                fit: BoxFit.cover,)
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 245),
                child: Text("BLOCK BUSTER DEALS",style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold  ),),
              ),
              SizedBox(height: 6,),
              Container(
                height: 500,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 4,
                    mainAxisExtent: 200,
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 10, // spacing between rows
                    crossAxisSpacing: 10, // spacing between columns
                  ),
                  padding: EdgeInsets.all(8.0), // padding around the grid
                  itemCount:4, // total number of items
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (context)=>amazon2()));
                          },
                          child: Container(
                            height:130,
                            width: 160,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image:AssetImage("assets/a3.jpg"),
                                  fit: BoxFit.fill )
                            ),
                          ),
                        ),


                          Text("AAc aa",style: TextStyle(fontSize: 19),
                            ),


                        Text("starting 500",style: TextStyle(fontSize: 16),
                           ),

                      ],
                    );
                  },
                ),
              ),
            ],
          ),

        ),

    );
  }
}
