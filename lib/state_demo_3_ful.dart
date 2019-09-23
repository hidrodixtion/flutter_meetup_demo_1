//import 'package:flutter/material.dart';
//
//class StateDemo3 extends StatefulWidget {
//  @override
//  _StateDemo3State createState() => _StateDemo3State();
//}
//
//class _StateDemo3State extends State<StateDemo3> {
//  var versi = "0.0";
//
//  Future<void> _loadVersi() async {
//    var loaded = await API.loadAppVersion();
//    setState(() {
//      versi = loaded
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Demo Stateless"),
//      ),
//      body: Center(
//        child: Text(
//          "Aplikasi Versi $versi",
//          style: Theme.of(context).textTheme.title,
//        ),
//      ),
//    );
//  }
//}
