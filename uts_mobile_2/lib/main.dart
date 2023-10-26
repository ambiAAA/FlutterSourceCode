// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts_mobile_2/pages/calculator.dart';
import 'package:uts_mobile_2/pages/home_page.dart';
import 'package:uts_mobile_2/pages/increment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/increment': (context) => increment(),
        '/calculator': (context) => calculator(),
      },
    );
  }
}
