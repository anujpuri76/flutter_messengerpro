import 'package:flutter/material.dart';

class termsofservice extends StatelessWidget {
  const termsofservice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(children: [                  Image.asset(
                      "assets/images/lg.2.png",
                      fit: BoxFit.fill,
          )],
        ))
    );
  }
}