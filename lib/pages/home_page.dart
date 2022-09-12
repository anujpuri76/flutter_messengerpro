import 'package:flutter/material.dart';
import 'package:flutter_messengerpro/pages/calls_page.dart';
import 'package:flutter_messengerpro/pages/chats_page.dart';
import 'package:flutter_messengerpro/pages/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>   
 {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MessengerPro'),
          actions: [
            IconButton(onPressed:(){}, 
            icon: Icon(Icons.search),
        ),
       PopupMenuButton(
        itemBuilder: (context) =>  [
          PopupMenuItem(
           
            child: Text('settings'),
          ),
            PopupMenuItem(
            child: Text('profile'),
          ),
          PopupMenuItem(
            child: Text('logout'),
          ),
          
          ]
        
        )],
          backgroundColor: Color.fromARGB(255, 53, 52, 52),
          bottom: TabBar(tabs: [
           
            Tab(icon: Icon(Icons.camera_alt,)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ]),
        ),
        body: TabBarView(children: [
         Center(child: Text('Tab 1 content'),),
         chatspage(),
          statuspage(),
          callspage(),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 68, 68, 68),
          onPressed: () {},
          
          child: Icon(Icons.message,),
          
        ),
        
      ),
    ));
  }
}

