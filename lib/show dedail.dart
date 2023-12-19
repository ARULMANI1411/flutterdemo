import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled/home.dart';
import 'package:untitled/ott.dart';
import 'package:untitled/video%20player.dart';

import 'class.dart';
import 'colors..dart';
class show extends StatefulWidget {
  @override
  State<show> createState() => _showState();
}

class _showState extends State<show> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:
                (context)=>ott()));
          },
            icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,),) ,
          backgroundColor: l,
        ),
        backgroundColor: l,
body: ListView(
     // physics: NeverScrollableScrollPhysics(),

      children: [

  Container(
    height: MediaQuery.of(context).size.height*0.30,
    width: MediaQuery.of(context).size.width*0.99,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/vickram.jfif'),
    fit: BoxFit.fill),
    ),
child: Column(
  children: [
    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
    IconButton(onPressed:(){
      Navigator.of(context).push(MaterialPageRoute(builder:

          (context)=>Video(videoUrl:  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',)));
    }, icon: Icon(Icons.play_circle_outline,
      color: Colors.white70,size: 150,))
  ],
),
  ),
  PreferredSize(
    preferredSize: const  Size.fromHeight(48),
    child: Container(

      decoration: BoxDecoration(color: n),
      child: ExpansionTile(

        title: Text('VICKRAM',style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),

      subtitle: Text('Action * 2022 *U/A',style: TextStyle(color: Colors.greenAccent,fontSize: 16,fontWeight: FontWeight.bold)),

        controlAffinity: ListTileControlAffinity.trailing,
        children: [
          ReadMoreText('This article is about the 2022 film. For the 1986 film, see Vikram (1986 Tamil film).\n'
              'ikram is a 2022 Indian Tamil-language action thriller film written and directed by Lokesh Kanagaraj, who wrote the dialogues with Rathna Kumar. It is produced by Kamal'
              ' Haasan who stars in the titular role, along with Vijay Sethupathi and Fahadh Faasil with Narain and Kalidas Jayaram in supporting roles. Suriya makes a cameo appearance. '
              'It is the '
              'spiritual successor of the 1986 film of the same name and the second installment in the Lokesh Cinematic Universe.',
            trimLines: 3,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    ),
  ),


   Column(

     children: [
    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
       Row(
         children: [

           SizedBox(width: MediaQuery.of(context).size.width*0.08,),
           IconButton(onPressed: (){}, icon:Icon(Icons.add,color:Colors.white,size: 28,)),
           SizedBox(width: MediaQuery.of(context).size.width*0.08,),
           IconButton(onPressed: (){}, icon:Icon(Icons.share,color:Colors.white,size: 28,)),
           SizedBox(width: MediaQuery.of(context).size.width*0.08,),
           IconButton(onPressed: (){}, icon:Icon(Icons.arrow_downward,color:Colors.white,size: 28,)),
           SizedBox(width: MediaQuery.of(context).size.width*0.08,),
           // ElevatedButton(onPressed: (){
           //
           //   Navigator.of(context).push(MaterialPageRoute(builder:
           //
           //       (context)=>Video(videoUrl:  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',)));
           //
           // }, child:Text("WATCH FREE"),
           //   style: ElevatedButton.styleFrom(
           //       minimumSize: Size(40, 43),
           //       backgroundColor: n,
           //       foregroundColor: h,
           //       side: BorderSide(color: b0,width: 2)
           //
           //   ),),

         ],

       ),

       Row(

         children: [

           SizedBox(width: MediaQuery.of(context).size.width*0.06,),

           Text('WHATCH LIST',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),

           SizedBox(width: MediaQuery.of(context).size.width*0.06,),

           Text('SHARE',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),

           SizedBox(width: MediaQuery.of(context).size.width*0.08,),

           Text('DOWNLODE',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
         ],
       ),
SizedBox(height: MediaQuery.of(context).size.height*0.03,),
       Padding(

         padding: const EdgeInsets.only(right: 200),

         child: Text('BLOCK BOUSTORS',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

       ),

       Container(

         height: MediaQuery.of(context).size.height*0.70,

         child: GridView.builder(
           physics: ScrollPhysics(),

           scrollDirection: Axis.vertical,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

             childAspectRatio: 5,
             mainAxisExtent: 260,
             crossAxisCount: 3, // number of items in each row
             mainAxisSpacing: 5, // spacing between rows
             crossAxisSpacing: 5, // spacing between columns
           ),
           padding: EdgeInsets.all(8.0), // padding around the grid
           itemCount:dat.length, // total number of items
           itemBuilder: (context, index) {
             return Column(
               children: [
                 Container(
                   height: MediaQuery.of(context).size.height*0.23,
                   width: MediaQuery.of(context).size.width*0.40,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(image:AssetImage(dat[index].image),

                           fit: BoxFit.fill )
                   ),
                 ),
               ],
             );
           },
         ),
       ),
     ],
   )
    ],
  )
      )
    );

  }
}
