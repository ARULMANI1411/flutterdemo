import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled/class.dart';
import 'package:untitled/video%20player.dart';
import 'home.dart';
class ded extends StatefulWidget {

  final movie jump;
  const ded({super.key,required this.jump});

  @override
  State<ded> createState() => _dedState();
}

class _dedState extends State<ded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.menu,size: 25,),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage((widget.jump.image).toString()),
                fit: BoxFit.fill),
            ),
                    child: Column(
                 children: [
                   SizedBox(height: 50,),
                   IconButton(onPressed:(){
                     Navigator.of(context).push(MaterialPageRoute(builder:

                         (context)=>Video(videoUrl:  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',)));
                   }, icon: Icon(Icons.play_circle_outline,
                   color: Colors.white70,size: 150,))
                 ],),
          ),
          ExpansionTile(
            title: Text('TITLE',style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
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
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          Container(
            height: 680,
          color: Colors.black,
            child: ListView.builder(
                itemCount: deti.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context,index)
                {
                  return Container(
                     height: 160,
                    color: Colors.white70,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 130,
                            width: 210,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: NetworkImage(deti[index].image),fit: BoxFit.fill)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                IconButton(onPressed:(){
                                  Navigator.of(context).push(MaterialPageRoute(builder:

                                      (context)=>Video(videoUrl:  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',)));
                                }, icon: Icon(Icons.play_circle_outline,
                                  color: Colors.white70,size: 100,))
                              ],
                            ),
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40,),
                            Text('videos  hd',style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text('actionc videos  hd ',style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text('videos hd actionc videos',style: TextStyle(fontSize: 20,color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
