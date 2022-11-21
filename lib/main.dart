// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.indigo,
    appBar: AppBar(
      title: const Text('تطابق صورة'),
      backgroundColor: Colors.indigo[800],

    ),
    body:  const ImagePage(),
  ),
));
}
class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
 
    int liftImageNumber = 1;
    int rightImageNumber = 2;
  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
           Text(
            liftImageNumber == rightImageNumber ? 'مبروك للقد نجحت' :
            'حاول مرة اخرى',
        style: TextStyle(
          fontSize: 42.0,
          color: Colors.white,
 ),
 ),
          Padding(
       padding: const EdgeInsets.all(10.0),
      child: Row(
   children: [
      Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
               liftImageNumber = Random().nextInt(8) + 1;
               rightImageNumber = Random().nextInt(8) + 1;
            });
           },
          child: Image.asset('images/image-$liftImageNumber.png'),
          ), 
     ),
     Expanded(
       child: TextButton(
       onPressed: () {
         setState(() {
           rightImageNumber = Random().nextInt(8) + 1;
           liftImageNumber = Random().nextInt(8) + 1;

         });
       },
       child: Image.asset('images/image-$rightImageNumber.png'),
       ),
     ),
   ],
 ),
 ),
      ],
    );
  }
}
 

