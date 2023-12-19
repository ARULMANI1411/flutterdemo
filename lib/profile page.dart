import 'package:flutter/material.dart';
import 'package:untitled/class.dart';
import 'package:untitled/kids%20mode.dart';
import 'package:untitled/ott.dart';

import 'colors..dart';
import 'home.dart';
class profile extends StatefulWidget {

  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: z,
          leading: BackButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:
                  (context)=>ott()));
            },
          )
        ),
        backgroundColor: z,
        body:
        SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
                color: z1,borderRadius: BorderRadius.circular(20)
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Container(
                    height:MediaQuery.of(context).size.height*0.10,
                    width:MediaQuery.of(context).size.width*0.20,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/men.png'),
                            fit: BoxFit.fill),shape: BoxShape.circle
                    ),
                  ),
                  SizedBox( height:MediaQuery.of(context).size.height*0.001,),
                  Text('ABCDEEodd',style: TextStyle(color:
                  Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                  Text('+919*****950',style: TextStyle(color:
                  Colors.white,fontSize: 20),),
                  //
                  SizedBox( width:MediaQuery.of(context).size.width*0.05,),
                                ListTile(
                                    leading:Container(
                      height:MediaQuery.of(context).size.height*0.05,
                      width:MediaQuery.of(context).size.width*0.10,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/kid.png'),
                              fit: BoxFit.fill),shape: BoxShape.circle
                      ),
                    ),
                                    title: Text('Kids',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                                onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder:
                  (context)=>kid()));
                                },
                                ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                 Container(
                   height: MediaQuery.of(context).size.height*0.25,
                   child: ListView.builder(
                     itemCount: profi.length,
                       itemBuilder: (BuildContext context,index)
                   {
                     return ListTile(
                       leading: Text(profi[index].text,style: TextStyle(fontSize: 20,color: Colors.white),),
                       trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                     );
                   }
                   ),
                 ),
                  Divider(
                    color: Colors.white,thickness: 1,height: 10,
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: TextButton(onPressed:(){}, child: Text('LOG OUT',
                    style: TextStyle(color:Colors.white,fontSize: 20),)),
                )
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
