import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'colors..dart';
class amazon2 extends StatefulWidget {
  const amazon2({super.key});

  @override
  State<amazon2> createState() => _amazon2State();
}

class _amazon2State extends State<amazon2> {
  String dropdownvalue = 'Qty: 1';
  var items = [
    'Qty: 1',
    'Qty: 2',
    'Qty: 3',
    'Qty: 4',
    'Qty: 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,size: 29,
        ),

        title: Container(
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,size: 25,),
                filled: true,
               fillColor: Colors.white,
                hintText: "Search in Amazon.in",
                hintStyle: TextStyle(color: Colors.blueGrey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),borderSide: BorderSide(color: l,width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),borderSide: BorderSide(color: l,width: 1)
                ),
              suffixIcon:Icon(Icons.mic),
              suffix: Icon(Icons.qr_code_scanner)
            ),
          ),
        ),
        flexibleSpace: Container(decoration: BoxDecoration(
          gradient: LinearGradient(colors: [h,i])
        ),),
        backgroundColor: h,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 60,

             child:Padding(
               padding: const EdgeInsets.only(left: 40),
               child: Row(
                 children: [
                   Text('BOAT',style: TextStyle(color:f,
                       fontSize: 50,fontWeight: FontWeight.bold),),
                  RichText(text:const TextSpan(
                    text: 'Boat Rocakerz 110pro in Earbuds\n',
                        style: TextStyle(fontSize: 13),
                    children: [
                      TextSpan(
                        text: "With 50h play time ,Qad mic \n",
                        style: TextStyle(fontSize: 13)
                      ),
                      TextSpan(
                        text: "1.299 prime",
                        style: TextStyle(fontSize: 13)
                      ),
                    ],
                  ),

                  ),
                 ],
               ),
             ) ,
            ),
            Divider(
              color: n,thickness: 1,height: 10,
            ),
            Container(
              height: 15,
              child: Padding(
                padding: const EdgeInsets.only(left: 280),
                child: Row(
                  children: [
                    Text("sponssord",style: TextStyle(color:n ),),
                    Icon(Icons.album_rounded,size: 17,color: n,)
                  ],
                ),
              ),
            ),
            Divider(
              color: n,thickness: 1,height: 10,
            ),
            Stack(
              children:[
                Container(
                  child: CarouselSlider.builder( options:
                  CarouselOptions(
                    height: 600,
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
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                      {
                        return
                          Container(
                          height: 300,
                          width: 450,
                            child: Image(image: AssetImage("assets/earth.png"),
                            fit: BoxFit.fill,)
                        );
                      }
                  ),
                ),

             Container(
               height: 50,
               width: 50,
               decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),
               child: Center(
                 child: Text('49%\noff',style: TextStyle(color: Colors.white,
                     fontSize: 18,fontWeight: FontWeight.bold),),
               ),
             ),

                Positioned(
                    left: 330,
                    child: Icon(Icons.share,size: 30,)),
                Positioned(
                  top: 550,
                    child: Icon(Icons.heart_broken,size: 30,)),
            ]
            ),
            Divider(
              color: n,thickness: 1,height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Visit the boat store",style: TextStyle(color: n2,fontSize: 18),),
              Row(
                children: [
                  Text("3.8",style: TextStyle(fontSize: 15),),
                  Container(
                    height: 20,
                    width: 100,
                    child: RatingBar.builder(
                      itemSize: 10,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(

                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Text("38008",style: TextStyle(
                    color: n2,fontSize: 14
                  ),),
                ],
              ),
            ],),
            Container(
              height: 60,
              child: RichText(text:
              TextSpan(
                  text: 'boat airdopes 141 Bluetooth TWS eirbods with42H\n'
                        'platime,low Latency mode for gaming ,ENxtec ,IWP\n'
                        'ipx4 water resitens,smooth touch controsl bold black',
                    style: TextStyle(color: l)
                  )
              )
              ),
            Divider(
              color: n,thickness: 1,height: 10,
            ),
            Container(
              height: 110,

              child: RichText(text: TextSpan(
                text: "-76%",
                style: TextStyle(color: Colors.red,fontSize: 40),
                children: [
                  TextSpan(
                    text: '1,999\n',style: TextStyle(fontSize: 40,color: l),
                  ),
                  TextSpan(
                    text: 'M.R.P.:4999\n',
                    style: TextStyle(fontSize: 15,color: l),
                  ),
                  TextSpan(
                    text: 'EMI starts at 100.',
                    style: TextStyle(fontSize: 18,color: l)
                  ),
                  TextSpan(
                    text: 'EMI options\n',style: TextStyle(color: n2,fontSize: 18)
                  ),
                  TextSpan(
                    text: 'inclusive of all taxes',style: TextStyle(color: l,fontSize: 17)
                  )
                ]
                )
              ),
            ),
            Divider(
              color: n,thickness: 1,height: 10,
            ),
            Container(height: 120,
              child: RichText(text: TextSpan(
                text: 'Total:',
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '1,499\n\n',style: TextStyle(fontSize:27,fontWeight: FontWeight.bold ),
                  ),
                  TextSpan(
                    text: 'FREE deliveriy',style: TextStyle(
                    fontSize: 18,color: n2)),
                  TextSpan(
                    text: 'Wednesday,8 November.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
                  ),
                  TextSpan(text: 'order\n',style: TextStyle(fontSize: 18)),
                  TextSpan(
                    text: 'Within',style: TextStyle(fontSize:18 )),
                  TextSpan(
                    text: '19 hrs 34 mins.',style: TextStyle(fontSize: 19,color: a2),),
                  TextSpan(
                    text: 'Details\n\n',style: TextStyle(fontSize: 18,color: n2)),
                  ]
                  ),
                 ),
            ),
            Container(
              height: 40,
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Icon(Icons.location_on_outlined,size: 28,),
                  Text('Delver to Arul-Alangudi-622301',style: TextStyle(
                    color: n2,fontSize: 20
                  ),)
                ],
              ),
            ),
            Container(
              height: 90,
              child: RichText(text: TextSpan(
                text: 'Available at a lower price from',style: TextStyle(fontSize:18 ),
                children: [
                  TextSpan(text: 'other sellers\n',style: TextStyle(color: n2,fontSize: 18)),
                  TextSpan(text: 'that may not offer fee Prime shipping\n\n'),
                  TextSpan(text: 'In stack',style: TextStyle(color: a2,fontSize: 25)),
                ]
              ),),
            ),
            Container(
              height: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: b1),
                    child: DropdownButton(
                      value: dropdownvalue, 
                      icon:  Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items)
                      {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child:
                  ElevatedButton(onPressed: (){}, child: Text('Add to cart',
                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ),),
                  style: ElevatedButton.styleFrom(
                 backgroundColor: b3,minimumSize: Size(400, 50),
                    foregroundColor: l,
                  ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: ElevatedButton(onPressed: (){}, child: Text('Buy Now',
                      style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: b2,minimumSize: Size(400, 50),
                        foregroundColor: l,
                      ),
                    ),
                  ),
                ],
              ),
            ),
           Container(
             height: 30,
             child: Row(
               children: [
                 Icon(Icons.lock,color: n,),
                 Text('Secure transaction ',style: TextStyle(color: n2,fontSize: 19),)
               ],
             ),
           ),
            SizedBox(height: 10,),
            RichText(text: TextSpan(
              text: 'Sold by',style: TextStyle(fontSize: 18),
              children: [
                TextSpan(
                  text: 'Frootle India Pvt Ltd(FIPL)',style: TextStyle(color:n2,fontSize: 18)
                ),
                TextSpan(text: 'and',style: TextStyle(fontSize: 18)),
                TextSpan(text: 'Fulfil by\n',style: TextStyle(color: n2,fontSize: 18)),
                TextSpan(text: 'Amazon\n\n',style: TextStyle(color: n2,fontSize: 18)),
                TextSpan(text: 'Gift-Warp available.\n\n',style: TextStyle(fontSize: 18)),
                TextSpan(text: 'Add to Wish List',style: TextStyle(color: n2,fontSize: 18)),
              ]
            )
            ),
            Divider(
              color: n,thickness: 1,height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

