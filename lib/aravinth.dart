import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class amz extends StatefulWidget {
  const amz({super.key});

  @override
  State<amz> createState() => _amzState();
}

class _amzState extends State<amz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(backgroundColor: Colors.cyanAccent,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              hintText: 'Search to Amazon.in',
            prefixIcon: Icon(Icons.search,size: 30,
            ),
              suffixIcon: Row(
               // mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.document_scanner),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mic),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body:
      Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width:  50,
                decoration: BoxDecoration(),
                child:
                Icon(Icons.location_on_outlined,),
              ),
              Container(
                height: 20,
                width: 250,
              decoration: BoxDecoration(),
                child: Text('Deliver to Aravinth - Sankari 637301',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.cyan,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                ),
                padding: EdgeInsets.all(10),
                itemCount: 4,
                itemBuilder: (context,index) {
                return Container(
                   height:200,
                  color: Colors.deepOrange,
                  child: Center(
                    child: Text(
                        'ok',
                      style: TextStyle(
                          fontSize: 18,color: Colors.white),

                    ),
                  ),

                );
            }




            ),











          ),







          Container(
            height: 100,

            child:
            ListView.builder(scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext con, index)
              {

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width:  150,
                  color: Colors.cyan,
                    child: Image(image: AssetImage("assets/a2.jpg"),
                    ),
                      ),
                );
              },
            ),
          ),








          CarouselSlider.builder(
              options: CarouselOptions(
            height: 200,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            //onPageChanged: callbackFuntion,
            scrollDirection: Axis.horizontal

          ),
            itemCount: 5,
            itemBuilder: (BuildContext con,index,c)
              {
                return Container(
                  height: 100,
                  width:  400,
                  color: Colors.cyan,
                  child: Image.asset("assets/A1.jpg"),



                );
              }

          ),
        ],
      ),
    );
  }
}
