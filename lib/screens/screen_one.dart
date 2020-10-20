import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget
{
  FirstScreen({Key key}) : super(key: key);

  @override
  FirstScreenState createState() => FirstScreenState();

}

class FirstScreenState extends State<FirstScreen>
{
  @override
  Widget build(BuildContext context) 
  {
    return Container
      (
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('You have 1 New Caller!'),
        FlatButton(
          child: const Text('Show Details'),
          color: Colors.lightBlueAccent,
          onPressed: ()
          {
            showModalBottomSheet<void>
              (
              context: context,
              builder: (BuildContext context)
              {
                return Container(
                  height: 200,
                  color: Colors.black12,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Pratik M'),
                        Text('Mobile No.:'),
                        Text('+1-123(456)(7890)'),
                        Icon(Icons.account_circle, color: Colors.blueGrey, size: 70.0),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
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
                                  Text(
                                      'Answer',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.green,)
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.call_end),
                                    color: Colors.red,
                                    onPressed: () {Navigator.pop(context);},
                                  ),
                                  Text(
                                      'Decline',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red,)
                                  ),
                                ],
                              ),
                            ],
                        ),
                    ]
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Phone Call',
        home: Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            backgroundColor: Colors.white10,
            title: Text('Phone Call'),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pratik M.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white,),),
                Image.asset(
                  'pratik.jpeg',
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
