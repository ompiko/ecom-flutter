import 'package:flutter/material.dart';

import 'package:flutter_ecom/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text('cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new CartProducts(),
      bottomNavigationBar: new Container(
        color: Colors.white70,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  width: 100,
                  child: ListTile(
              title: new Text("Total: "),
              subtitle: new Text("\$622"),
            ),
                )),
            Container(
              width: 120,
              // child: Expanded(
                child: new MaterialButton(
                  onPressed: () {},
                  child: new Text(
                    "Check out",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    // side: BorderSide(color: Colors.amber),
                  ),
                ),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
