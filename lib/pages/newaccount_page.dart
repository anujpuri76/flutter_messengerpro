import'package:flutter/material.dart';



class newaccountpage extends StatelessWidget {
  const newaccountpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 17, 17),
       body:Center(
        child: Column(children: [
          SizedBox(height: 19,),
          Text("Create Account",style: TextStyle(color: Colors.white),textScaleFactor: 2.8,),
           CircleAvatar(
            backgroundImage: AssetImage('assets/images/lg.18.jpg'),
            radius: 100,
            ),
            SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
               child: Column(
                 children: [
                   TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color.fromARGB(225, 250, 246, 247),
                                filled: true,
                                icon: Icon(Icons.person,color: Colors.white,),
                                hintText: "Name",
                                labelText: "Enter Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your Name. ";
                                }

                                return null;
                              },       
                            ),  
                            SizedBox(height:7 ),
                             TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color.fromARGB(225, 250, 246, 247),
                                filled: true,
                                icon: Icon(Icons.email,color: Colors.white,),
                                hintText: " Email ",
                                labelText: " Enter Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your email address  . ";
                                }

                                return null;
                              },       
                            ), 
                            SizedBox(height:7 ),
                             TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color.fromARGB(225, 250, 246, 247),
                                filled: true,
                                icon: Icon(Icons.lock,color: Colors.white,),
                                suffixIcon: Icon(Icons.visibility),
                                hintText: "Enter Email password",
                                labelText: "password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter password . ";
                                }else if (value.length < 8) {
                                  return "Password length should be atleast 8";
                                }

                                return null;
                              },       
                            ),
                            SizedBox(height: 10,),
                           InkWell(
                            onTap: () {},
                             child: Container(
                                  width: 160,
                                  height: 50,
                                  alignment: Alignment.center,
                                  
                                  child: Text('Verify',style:TextStyle (color:Colors.white,fontWeight:FontWeight.bold,fontSize: 22),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 124, 83),
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  
                                ),
                           ),
                            
                 ],
               ),
             ),  
                       SizedBox(height:35),                           
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
          ]),
       
        )) 
       
    ;
  }
}