import 'package:flutter/material.dart';
import 'package:meetup_demo_1/model/Cart.dart';
import 'package:meetup_demo_1/state_demo_2.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        builder: (context) => Cart(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var judul = "Hit You With";

  void _onButtonPressed() {
    setState(() {
      judul = "Ddu Ddu Ddu";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              judul,
              style: TextStyle(fontSize: 24),
            ),
            MaterialButton(
              child: Text("That"),
              color: Colors.lime,
              onPressed: () => _onButtonPressed(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_right),
        onPressed: () => _gotoDemo2(),
      ),
    );
  }

  void _gotoDemo2() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StateDemo2()));
  }
}
