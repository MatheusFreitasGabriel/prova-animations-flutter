import 'package:flutter/material.dart';
import 'package:prova_animations/boasvindas_page.dart';
import 'package:prova_animations/home_page.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoasvindasPage(),
    );
  }
}
