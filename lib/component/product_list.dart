import 'package:flutter/material.dart';
import 'package:meetup_demo_1/model/Cart.dart';
import 'package:meetup_demo_1/model/Item.dart';
import 'package:provider/provider.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Item> itemList = [
    Item(title: "Mobil #1", price: 50000),
    Item(title: "Mainan #2", price: 20000),
    Item(title: "Minuman #2", price: 8000),
    Item(title: "Sepatu #4", price: 150000)
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: itemList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Provider.of<Cart>(context, listen: false).add(itemList[index]),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                  child: Text(
                    itemList[index].title,
                    style: Theme.of(context).textTheme.title,
                  ),
                  footer: Text(
                    itemList[index].price.toInt().toString(),
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
