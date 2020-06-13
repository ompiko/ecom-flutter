import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var ProductsOnCart = [
    {
      "name": "Chair 2",
      "picture": "images/products/ch12.jpg",
      "new_price": 90,
      "size": "Small",
      "color": "Tosca",
      "quantity": "1"
    },
    {
      "name": "Chair 3",
      "picture": "images/products/ch13.jpg",
      "new_price": 80,
      "size": "Medium",
      "color": "Brown",
      "quantity": "2"
    },
    {
      "name": "Chair 4",
      "picture": "images/products/ch14.jpg",
      "new_price": 93,
      "size": "Small",
      "color": "Brown",
      "quantity": "4"
          ""
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cart_product_name: ProductsOnCart[index]["name"],
            cart_product_color: ProductsOnCart[index]["color"],
            cart_product_size: ProductsOnCart[index]["size"],
            cart_product_new_price: ProductsOnCart[index]["new_price"],
            cart_product_quantity: ProductsOnCart[index]["quantity"],
            cart_product_picture: ProductsOnCart[index]["picture"],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  int total =0;
  final cart_product_name;
  final cart_product_picture;
  final cart_product_new_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  SingleCartProduct(
      {this.cart_product_name,
      this.cart_product_picture,
      this.cart_product_new_price,
      this.cart_product_size,
      this.cart_product_color,
      this.cart_product_quantity});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          elevation: 8.0,
          child: Container(
            width: MediaQuery.of(context).size.height,
            height: 200,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: new Image.asset(cart_product_picture),
                  width: 100,
                  height: 100,
                ),
                Container(
                  width: 190,
                  height: 100,
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          cart_product_name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Size   : " + cart_product_size,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Color : " + cart_product_color,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            new Text(
                              "\$${cart_product_new_price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
                      Text(cart_product_quantity.toString()),
                      IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//  Widget build(BuildContext context) {
//    return Container(
//      child: Card(
//        elevation: 8.0,
//        child: ListTile(
//          leading: new Image.asset(cart_product_picture),
//          title: new Text(cart_product_name),
//          subtitle: new Column(
//            children: <Widget>[
//              new Row(
//                children: <Widget>[
//                  //Size
//                  Padding(
//                    padding: EdgeInsets.all(8.0),
//                    child: new Text("Size:"),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(8.0),
//                    child: new Text(
//                      cart_product_size,
//                      style: TextStyle(color: Colors.red),
//                    ),
//                  ),
//                  //Color
//                  Padding(
//                    padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
//                    child: new Text("Color:"),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(8.0),
//                    child: new Text(
//                      cart_product_color,
//                      style: TextStyle(color: Colors.red),
//                    ),
//                  ),
//                ],
//              ),
//              new Container(
//                alignment: Alignment.topLeft,
//                child: new Text(
//                  "\$${cart_product_new_price}",
//                  style: TextStyle(
//                      fontSize: 18.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.red),
//                ),
//              ),
//            ],
//          ),
//          trailing: new Column(
//            children: <Widget>[
//              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: null),
//              new Text(cart_product_quantity),
//              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
}