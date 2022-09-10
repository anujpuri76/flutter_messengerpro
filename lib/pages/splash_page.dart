import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 7, 7),
      body:Center(
        child: Column(children: [
          SizedBox(height: 50,),
          Text("Welcome To MessengerPro",style: TextStyle(color: Colors.white),textScaleFactor: 2.8,),
      SizedBox(height: 85,),
       CircleAvatar( 
        radius: 100,
        backgroundImage: AssetImage("assets/images/lg.1.png"),

       ),
       SizedBox(height:50,),
       
           Text("Read our Privacy Policy.Tap'Agree and continue'to accept the ",
           style: TextStyle(color: Colors.white),),
         
        TextButton(onPressed:(){
          context.go("/termsofservice");
        }, 
        
        child: Text("Terms of Service.")) ,
        SizedBox(height:30,),
         InkWell(
          onTap: () {
           context.go("/login");
          },
           child: Container(
                                  width: 250,
                                  height: 50,
                                  alignment: Alignment.center,
                                  
                                  child: Text('Agree and Continue',style:TextStyle (color:Colors.white,fontWeight:FontWeight.bold,fontSize: 22),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 124, 83),
                                    borderRadius: BorderRadius.circular(5)
           )),
         ) ],
       
        ),
      ) ,
       
    );
  }
}