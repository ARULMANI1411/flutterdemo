import 'package:flutter/material.dart';
class val2 extends StatefulWidget {
  const val2({super.key});

  @override
  State<val2> createState() => _val2State();
}

class _val2State extends State<val2> {

  final _key=GlobalKey<FormState>();
  TextEditingController email=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body:
      Form(
        key: _key,
          child: Column(
            children: [
              SizedBox(height: 70,),
              TextFormField(
                validator:(val2){
                  if(val2==null||val2.isEmpty)
                    {
                      return'enter the name';
                    }
                },
                decoration: InputDecoration(icon:Icon(
                  Icons.person,size: 50,color: Colors.cyanAccent,),
                  labelText: "USER NAME",filled: true,
                fillColor: Colors.amberAccent,enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.red,)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.cyanAccent,width: 8 ),

                  )
                ),
              ),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(icon:Icon(
                  Icons.password_outlined,size: 50,color: Colors.black,),
                    labelText: "PASSWORD",filled: true,
                    fillColor: Colors.amberAccent,enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.red, )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.cyanAccent, width: 8),

                    )
                ),
              ),
              SizedBox(height: 40,),
              TextFormField(
                validator: (String?value )
                {
                  if(!RegExp(r'\S=@\s=\.\s=').hasMatch(value!))
                    {
                      // return please enter the valid e-mail
                    }
                },
                decoration: InputDecoration(icon:Icon(
                  Icons.mail_outline,size: 50,color: Colors.red,),
                    labelText: " E-MAIL",filled: true,
                    fillColor: Colors.amberAccent,enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.red, )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.cyanAccent,width: 8 ),

                    )
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                if(_key.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).
                showSnackBar(const SnackBar(content: Text("ok")) );

                  }

              }, child: Text("LOGIN",style: TextStyle(fontSize: 30),),
                style: ElevatedButton.styleFrom(minimumSize:Size(200, 80),
                foregroundColor: Colors.blue,backgroundColor: Colors.orangeAccent,

              ),
              ),

            ],
          ),
      ),
backgroundColor: Colors.greenAccent,
    );
  }
}
