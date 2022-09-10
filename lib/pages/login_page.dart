import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 17, 17, 17),
      body:Center(
        child: Column(children: [
          SizedBox(height: 10,),
          Text("Login To MessengerPro",style: TextStyle(color: Colors.white),textScaleFactor: 2.8,),
      SizedBox(height: 30,),
       CircleAvatar( 
        radius: 100,
        backgroundImage: AssetImage("assets/images/lg.3.png"),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
           child: Form(
            
             child: Column(
               children: [
                 TextFormField(
                  
                  decoration: InputDecoration(
                   fillColor:Color.fromARGB(225, 250, 246, 247),
                   filled: true,
                    hintText: "Enter Username",
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10))
                   ),
           validator: (value){
             if (value==null|| value.isEmpty) {
               return"Username cannot be empty";
             }
             return null;
           },
           ),
           SizedBox(height:7 ),
                   TextFormField(
                    obscureText: true,
                  decoration: InputDecoration(
                     fillColor:Color.fromARGB(225, 250, 246, 247),
                   filled: true,
                    hintText: "Enter Password",
                    labelText: "Password",
                     border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10))
                 ),
                 validator: (value){
                  if (value!.isEmpty){
                    return"Password connot be empty";
                  } else if (value.length<8){
                    return"Password length should be atleast 8";
                  }
                  return null; 
                 },
                 ),
                 SizedBox(height: 5,),
                  
                   Row(
                     children: [
              TextButton(onPressed:(){
                context.go("/forgot");
              }, 
              
              child: Text("forgot password ?")),
                     ],
                   ),
             InkWell(
          onTap: () {
           context.go("/home");
          },
           child: Container(
                                  width: 250,
                                  height: 50,
                                  alignment: Alignment.center,
                                  
                                  child: Text('Login to account',style:TextStyle (color:Colors.white,fontWeight:FontWeight.bold,fontSize: 22),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 124, 83),
                                    borderRadius: BorderRadius.circular(5)
           )),
         ) ,
                    Center(
             child: Column(
               children: [
                 TextButton(onPressed:(){
                      context.go("/newaccount");
                    }, 
                    
                    child: Text("don't have an account?")),
               ],
             ),
                    ),
                     SizedBox(height:40),                           
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                     children:const  [                 
                               CircleAvatar( 
                          backgroundImage: AssetImage('assets/images/lg.5.png'),
              radius: 30
              ,),
              SizedBox(width: 9,),
                   CircleAvatar(
              backgroundImage: AssetImage('assets/images/lg.6.png'),
              radius: 30
              ,),
               SizedBox(width: 9,),
                CircleAvatar(
              backgroundImage: AssetImage('assets/images/lg.7.png'),
              radius: 30
              
              ,),
                             ],
                           ),
               
               ],
             ),
           ),
         ) ]
        ))
    );
  }
}