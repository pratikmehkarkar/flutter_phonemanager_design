import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdScreen extends StatefulWidget
{
  ThirdScreen({Key key}) : super(key: key);
  @override
  ThirdScreenState createState() => ThirdScreenState();

}

class ThirdScreenState extends State<ThirdScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Anthony +1-123(456)(7890)',style: TextStyle(fontSize: 25.0),),
            const Text('Allie +1-123(456)(7890)',style: TextStyle(fontSize: 25.0),),
            const Text('Pratik +1-123(456)(7890)',style: TextStyle(fontSize: 25.0),),
            const Text('Tanya +1-123(456)(7890)',style: TextStyle(fontSize: 25.0),)
          ],
        ),
      ),
    );
  }

}
