import 'package:cs481_lab2/screens/screen_one.dart';
import 'package:cs481_lab2/screens/screen_three.dart';
import 'package:cs481_lab2/screens/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget 
{
  Home({Key key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>
{
  //index variable holds the value of selected tab in the bottom navigation
  int index = 0;
  
  //widget_option is a array has the contents of the bottom navigation bar.
  final widget_option = [
    new FirstScreen(),
    new SecondScreen(),
    new ThirdScreen()
  ];
  
  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Manager'),
      ),
      body: Center(
        child: widget_option.elementAt(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.call),title: Text('Calls')),
            BottomNavigationBarItem(icon: Icon(Icons.call_missed),title: Text('Missed Calls')),
            BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text('My Contacts')),
          ],
           currentIndex: index,
        fixedColor: Colors.brown,
        //here onTap property handles the onClick method
        onTap: onClick,
      ),
    );
  }
  

  void onClick(int o_index) 
  {
    setState(() {
      index = o_index;
    });
  }
}