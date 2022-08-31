import 'package:flutter/material.dart';

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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MessengerPro'),
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
          Center(child: Text('Tab 2 content'),),
          Center(child: Text('Tab 3 content'),),
          Center(child: Text('Tab 4 content'),),
        ]),
      ),
    ));
  }
}

