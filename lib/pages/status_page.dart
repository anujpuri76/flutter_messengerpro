import 'package:flutter/material.dart';
import 'package:flutter_messengerpro/modals/status_modul.dart';

class statuspage extends StatelessWidget {
  const statuspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
children: [
  ListTile(
    leading: CircleAvatar(backgroundColor:Colors.grey,
               backgroundImage:AssetImage('images/lg.14.png'),
              ),
             
              title: Text(
               'My status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
               subtitle: Text(
                'Tap to add status update',
                style: TextStyle(color: Colors.grey, fontSize: 13.0),
            ),
            
          onTap: (){},
  ),
  Divider(),
  Padding(padding: EdgeInsets.only(left: 20.0),
  child: Align(alignment: Alignment.topLeft,
  child: Text('Recent updates',
  textAlign: TextAlign.left,
  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
  ),
  ),
  ),
  Flexible(child: ListView.builder(
    itemCount: statusdata.length,
    itemBuilder: (context,i)=> Column(
      children: [
        ListTile(
            leading: CircleAvatar(backgroundColor:Colors.grey,
               backgroundImage:AssetImage(statusdata[i].avatar),
              ),
             
              title: Text(
               statusdata[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
               subtitle: Text(
               statusdata[i].time,
                style: TextStyle(color: Colors.grey, fontSize: 13.0),
            ),
           
            onTap: (){
              
         
            },
        ),
        Divider(
          height: 10.0,
        )
      ],
    )))
],
    );
  }
}