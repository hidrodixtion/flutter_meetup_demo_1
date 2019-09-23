import 'package:flutter_test/flutter_test.dart';
import 'package:meetup_demo_1/model/Cart.dart';
import 'package:meetup_demo_1/model/Item.dart';

void main() {
  test('adding items increases total cost', () {
    final cart = Cart();
    final startingPrice = cart.totalPrice;

    cart.addListener(() {
      expect(cart.totalPrice, greaterThan(startingPrice));
    });
    cart.add(Item(title: "Product#1", price: 24.0));
  });
}