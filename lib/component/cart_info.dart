import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetup_demo_1/model/Cart.dart';
import 'package:provider/provider.dart';

class CartInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Consumer<Cart>(
        builder: (context, cart, child) {
          return Row(
            children: <Widget>[
              Expanded(
                child: Text("Cart: ${cart.items.length}", style: Theme.of(context).textTheme.subhead,),
              ),
              Expanded(
                child: Text("Price: ${cart.totalPrice.toInt()}", style: Theme.of(context).textTheme.subhead,),
              ),
            ],
          );
        },
      ),
    );
  }
}
