import 'package:flutter/material.dart';
import 'MyBot.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'HiBot',
       theme: ThemeData(  
                 // Add the 3 lines from here... 
        primaryColor: Colors.red,
      ),      
      home: Scaffold(
         appBar: AppBar(
          title:Text('HiBot'),
         ),
          body:MyBot(),
      ),
     
    );
  }
}




