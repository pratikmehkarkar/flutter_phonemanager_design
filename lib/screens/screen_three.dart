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

      child:  ListView(
        children: <Widget>[
      ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('images/1.png'),
      ),
      title: Text(
        'Anthony',
      ),
      subtitle: Text('+1-123(456)(7890)'),
    ),
    new Divider(
    height: 1.0,
    indent: 1.0,
    ),
    ListTile(
    leading: CircleAvatar(
    backgroundColor: Colors.white,
    backgroundImage: AssetImage('images/1.png'),
    ),
    title: Text('Allie'),
    subtitle: Text('+1-123(456)(7890)'),
  ),
  new Divider(
  height: 1.0,
  indent: 1.0,
  ),
  ListTile(
  leading: CircleAvatar(
  backgroundColor: Colors.white,
  backgroundImage: AssetImage('images/2.png'),
  ),
  title: Text('Pratik'),
  subtitle: Text('+1-123(456)(7890)'),
  ),
  new Divider(
  height: 1.0,
  indent: 1.0,
  ),
  ListTile(
  leading: CircleAvatar(
  backgroundColor: Colors.white,
  backgroundImage: AssetImage('images/3.png'),
  ),
  title: Text(
  'Tanya',
  ),
  subtitle: Text('+1-123(456)(7890)'),
  ),
        ],
      ),
    );
  }
}


