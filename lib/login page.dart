import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/ott.dart';

import 'colors..dart';
import 'home.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
backgroundColor: z,
          leading: BackButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:
                  (context)=>ott()));
            },
          ),
          title: Text('Login/Register',style: TextStyle(
              color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 20
          ),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text('skip',style: TextStyle(color: e,fontSize: 15,fontWeight: FontWeight.bold),),
            )
          ],
        ),
        body: Form(
          key: _key,
          child: Container(
            color: z,
             height: 1100,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                        RegExp(r"[0-9]"),
                      )],
                      validator: (login){
                        if(login==null||login.isEmpty)
                          {
                            return"please enter the  phone number ";
                          }
                        if(login.length !=10)
                          {
                            return"plase enter the a 10 digite phone number";
                          }
                        return null;
                      },
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: h,fontSize: 15),
                        labelText: 'Mobile number',
                      labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white,width: 3),
                      ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 3)
                        )
                      ),
                    ),
                  ),
                  Text('or countinue wwith:',style:
                  TextStyle(color: Colors.white,fontSize: 25),),
                  SizedBox(height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 130,),
                      Container(
                        height: 50,
                        width: 50,
                          decoration:BoxDecoration(color: Colors.white,
                            image: DecorationImage(image: AssetImage('assets/go.jpg'),
                            fit: BoxFit.cover,
                          ) ,shape: BoxShape.circle
                      )
                      ),
                      SizedBox(width: 30,),
                      Container(
                          height: 50,
                          width: 50,
                          decoration:BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/fb.png'),
                                fit: BoxFit.cover,
                              ) ,shape: BoxShape.circle
                          )
                      ),
                    ],
                  ),
                  SizedBox(height:450,
                  ),
                  RichText(text: TextSpan(
                    text: 'By proceeding you agree to our  ',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                      children: [
                        TextSpan(
                          text: 'Terms of Use\n',
                              style: TextStyle(color:e,fontSize: 20),
                        ),
                        TextSpan(
                          text: '                 and ',
                          style: TextStyle(color:Colors.white,fontSize: 20),
                        ),
                        TextSpan(
                          text: 'privacy policy',
                          style: TextStyle(color:e,fontSize: 20),
                        ),
                      ]
                  )
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: (){
                    if(_key.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).
                    showSnackBar(const SnackBar(content: Text("ok")));
                      }
                  }, child:Text('proceed',style: TextStyle(
                    fontSize: 20
                  ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: e,foregroundColor: Colors.white,minimumSize:
                        Size(270, 60),shape:RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(10))
                    )
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
