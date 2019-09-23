import 'package:flutter/material.dart';
import 'package:meetup_demo_1/state_demo_3.dart';

class StateDemo2 extends StatefulWidget {
  @override
  _StateDemo2State createState() => _StateDemo2State();
}

class _StateDemo2State extends State<StateDemo2> {
  var isiText = "";

  void _onTextChanged(str) {
    setState(() {
      isiText = str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo 2"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                isiText,
                style: TextStyle(fontSize: 24),
              ),
              TextFormField(
                onChanged: (str) => _onTextChanged(str),
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.chevron_right), onPressed: () => _goToDemo3(),),
    );
  }

  void _goToDemo3() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => StateDemo3()));
  }
}
