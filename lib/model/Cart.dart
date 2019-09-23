import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'Item.dart';

class Cart extends ChangeNotifier {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  double get totalPrice {
    var prices = items.map((item) => item.price).toList();
    if (prices.isEmpty) {
      return 0;
    }
    return prices.reduce((a, b) => a + b);
  }

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }
}