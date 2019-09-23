import 'package:flutter/material.dart';

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
    );
  }
}
