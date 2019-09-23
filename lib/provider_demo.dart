import 'package:flutter/material.dart';
import 'package:meetup_demo_1/component/cart_info.dart';
import 'package:meetup_demo_1/component/product_list.dart';

class ProviderDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider Demo"),),
      body: Column(
        children: <Widget>[
          CartInfo(),
          Expanded(
            child: ProductList(),
          )
        ],
      ),
    );
  }
}