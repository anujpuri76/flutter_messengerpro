import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';


class messagepage extends StatefulWidget {
  messagepage({Key? key}) : super(key: key);

  @override
  State<messagepage> createState() => _messagepageState();
}

class _messagepageState extends State<messagepage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Bubble(
  alignment: Alignment.center,
  color: const Color.fromRGBO(212, 234, 244, 1),
  child: const Text('TODAY',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 11)),
),
Bubble(
  margin: const BubbleEdges.only(top: 10),
  alignment: Alignment.topRight,
  nip: BubbleNip.rightTop,
  color: const Color.fromRGBO(225, 255, 199, 1),
  child: const Text('hello ankit', textAlign: TextAlign.right),
),
Bubble(
  margin: const BubbleEdges.only(top: 2),
  alignment: Alignment.topRight,
  nip: BubbleNip.rightTop,
  showNip: false,
  color: const Color.fromRGBO(225, 255, 199, 1),
  child: const Text('books return kab karni h?', textAlign: TextAlign.right),
),

Bubble(
  margin: const BubbleEdges.only(top: 10),
  alignment: Alignment.topLeft,
  nip: BubbleNip.leftTop,
  child: const Text('bro aj busy hu '),
),
Bubble(
  margin: const BubbleEdges.only(top: 2),
  alignment: Alignment.topLeft,
  nip: BubbleNip.leftTop,
  showNip: false,
  child: const Text('kal chale ge sham ko'),
),
      ],
    );
  }
}