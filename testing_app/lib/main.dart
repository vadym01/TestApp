import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
),
);
class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}
class _MyApp extends State<MyApp> {
  //defaultColor
  var randomColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: randomColor,
      appBar: AppBar(
        title: Text('Test App'),
        centerTitle: true,
        backgroundColor: randomColor,
        elevation: 0.0,
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            randomColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
          });
        },
        child: Icon(Icons.colorize),
      ),
      body: Center(
        child: Text(
          'Hey There',
          style: TextStyle(
            fontSize: 50.0
          ),
        ),
      )
    );
  }
}