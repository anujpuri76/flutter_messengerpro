import 'package:flutter/material.dart';
import 'package:flutter_messengerpro/modals/calls_modal.dart';


class callspage extends StatefulWidget {
  callspage({Key? key}) : super(key: key);

  @override
  State<callspage> createState() => _callspageState();
}

class _callspageState extends State<callspage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: calldata.length,
        itemBuilder: (context,i)=>Column(
          children: [
            Divider(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor:Colors.grey,
               backgroundImage:AssetImage(calldata[i].avatar),
              ),
             
              title: Text(
                calldata[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
               subtitle: Text(
                calldata[i].time,
                style: TextStyle(color: Color.fromARGB(255, 39, 39, 39), fontSize: 13.0),
            ),
            trailing:Icon(Icons.call,
            size: 25,),

            onTap: (){
              
         
        
            },
            )
          ],
        )
        
        ),
    );
  }
}