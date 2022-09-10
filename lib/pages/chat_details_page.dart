import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_messengerpro/pages/message_page.dart';
import 'package:go_router/go_router.dart';

class chatdetailspage extends StatefulWidget {
  chatdetailspage({Key? key}) : super(key: key);

  @override
  State<chatdetailspage> createState() => _chatdetailspageState();
}

class _chatdetailspageState extends State<chatdetailspage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
  backgroundColor: Color.fromARGB(124, 204, 187, 168),
  appBar: AppBar(
    leading: IconButton(onPressed: (){
      context.go("/home");
    }, icon: Icon( Icons.arrow_back,color:Colors.white),),
    
    backgroundColor: Color.fromARGB(255, 24, 24, 24),
    title: Row(
      children: [
        CircleAvatar(backgroundImage: AssetImage("images/lg.8.jpg"),
        ),
  Padding(padding: EdgeInsets.only(left: 6.0),
  child: Text('Ankit'),
  ),
  SizedBox(width: 180,),
  IconButton(onPressed: null, icon: Icon( Icons.video_call,color:Colors.white),),
  SizedBox(width: 5,),
  IconButton(onPressed: null, icon: Icon( Icons.call,color:Colors.white),),
  SizedBox(width: 10,),
    PopupMenuButton(
      color: Color.fromARGB(255, 61, 61, 61),
        itemBuilder: (context) =>  [
           PopupMenuItem(
            child: Text('View contact '),
            textStyle: TextStyle(color: Colors.white),
          ),
          PopupMenuItem(
           child: Text('Search'),
           textStyle: TextStyle(color: Colors.white),
          ),
            PopupMenuItem(
            child: Text('Mute notifications'),
            textStyle: TextStyle(color: Colors.white),
          ),
          PopupMenuItem(
            child: Text('Wallpaper'),
            textStyle: TextStyle(color: Colors.white),
          ),
          PopupMenuItem(
            child: Text('More'),
            textStyle: TextStyle(color: Colors.white),
          ),
          
          ]
          //  IconButton(onPressed:(){}, 
        //     icon: Icon(Icons.more_vert,
        // ))
        )
  // IconButton(onPressed: null, icon: Icon( Icons.more_vert,color:Colors.white),),
 ],
    ),
  
  ),
  body: Column(children: [
    Expanded(child:  messagepage()),
    Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [Flexible(
          child: TextFormField(
            minLines: 1,
            maxLines: 5,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Color.fromARGB(255, 53, 53, 53),width: 1),
              
              ),
                  enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Color.fromARGB(255, 53, 53, 53),width: 1)
            
            ),
           
            hintText: "Type a message",
           icon: Icon(Icons.camera),
            
          )
          )

      )],
      ),
    )
    
  ]),
    );
  }
}