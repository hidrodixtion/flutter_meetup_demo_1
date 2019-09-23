import 'package:flutter/material.dart';
import 'package:meetup_demo_1/provider_demo.dart';

class StateDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Stateless"),
      ),
      body: Center(
        child: Text(
          "Aplikasi Versi 1.0",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.chevron_right),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProviderDemo()));
          }),
    );
  }
}
