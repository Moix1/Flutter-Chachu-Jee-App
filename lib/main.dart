import 'package:flutter/material.dart';
import 'package:chachujee/home_page.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      title: 'Chachu Jee',
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
} 

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => HomePage(),
        
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: new CircleAvatar(
          backgroundColor: Colors.white,
          radius: 110.0,
          child: Image.asset('assets/images/logo.jpg'),
        ),
      )
    );
  }
}