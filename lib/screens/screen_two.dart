import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatefulWidget
{
  SecondScreen({Key key}) : super(key: key);
  @override
  SecondScreenState createState() => SecondScreenState();

}

class SecondScreenState extends State<SecondScreen>
{
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     key: scaffoldkey,
     body: Container(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           mainAxisSize: MainAxisSize.min,
           children: [
             const Text('You have 1 Missed Call'),
             FlatButton(onPressed: _displayBottomSheet, child: const Text('Show Missed Calls'), color: Colors.lightBlueAccent,),
           ],
         ),
       ),
     ),
   );
  }

  void _displayBottomSheet()
  {
    scaffoldkey.currentState.showBottomSheet<void>((BuildContext context)
    {
      return Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.blueAccent)),
            color: Colors.black12
        ),
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //children: [
                  IconButton(
                    icon: Icon(Icons.call),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new SecondRoute()),
                      );
                    },
                  ),
                  //Text(
                      //'Call Back',
                      //style: TextStyle(
                        //fontSize: 8,
                        //fontWeight: FontWeight.w400,
                        //color: Colors.green,)
                  //),
                //],
              //),
          Text('Anthony', textAlign: TextAlign.center, style: TextStyle(fontSize: 27.0,),),
          ],
          ),
        ),
      );
    });
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Outgoing Phone Call',
        home: Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            backgroundColor: Colors.white10,
            title: Text('Outgoing Phone Call'),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Calling Anthony....', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white,),),
                Image.asset(
                  'anthony.JPG',
                  width: 600,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                IconButton(
                  icon: Icon(Icons.call_end),
                  color: Colors.red,
                  onPressed: () {Navigator.pop(context);},
                ),
                Text(
                    'End Call',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,)
                ),
              ]
          ),
        )
    );
  }
}


