import'package:flutter/material.dart';
import 'package:flutter_messengerpro/modals/chats_modals.dart';
import 'package:go_router/go_router.dart';

class chatspage extends StatefulWidget {
  chatspage({Key? key}) : super(key: key);

  @override
  State<chatspage> createState() => _chatspageState();
}

class _chatspageState extends State<chatspage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context,i)=>Column(
          children: [
            Divider(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor:Colors.grey,
               backgroundImage:AssetImage(chatData[i].avatar),
              ),
             
              title: Text(
                chatData[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
               subtitle: Text(
                chatData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 13.0),
            ),
            trailing:Text(
              chatData[i].time,
               style: TextStyle(color: Colors.grey, fontSize: 11.0),
            ) ,
            onTap: (){
              
          context.go("/chatdetails");
        
            },
            )
          ],
        )
        
        ),
    );
  }
}