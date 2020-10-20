//Code written by Pratik Mehkarkar for bottom navigation bar
import 'package:flutter/material.dart';
import 'package:cs481_lab2/screens/bottom_navigation.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lab',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

