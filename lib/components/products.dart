import 'package:flutter/material.dart';
import 'package:flutter_ecom/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Chair",
      "picture": "images/products/ch11.jpg",
      "old_price": 100,
      "new_price": 88,
    },
    {
      "name": "Chair 2",
      "picture": "images/products/ch12.jpg",
      "old_price": 108,
      "new_price": 90,
    },
    {
      "name": "Chair 3",
      "picture": "images/products/ch13.jpg",
      "old_price": 108,
      "new_price": 90,
    },
    {
      "name": "Chair 4",
      "picture": "images/products/ch14.jpg",
      "old_price": 108,
      "new_price": 90,
    },
    {
      "name": "ChairCP",
      "picture": "images/products/ch11.jpg",
      "old_price": 100,
      "new_price": 88,
    },
    {
      "name": "Chair 2CP",
      "picture": "images/products/ch12.jpg",
      "old_price": 108,
      "new_price": 90,
    },
    {
      "name": "Chair 3CP",
      "picture": "images/products/ch13.jpg",
      "old_price": 108,
      "new_price": 90,
    },
    {
      "name": "Chair 4CP",
      "picture": "images/products/ch14.jpg",
      "old_price": 108,
      "new_price": 90,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_new_price: product_list[index]['new_price'],
          );
        });
  }
}
class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_new_price;

  Single_product(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_new_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    //passing the value a product to page product_details
                    product_details_name: product_name,
                    product_details_picture: product_picture,
                    product_details_old_price: product_old_price,
                    product_details_new_price: product_new_price,

                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(child: new Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                        ),
                        new Text("\$${product_new_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    )
                  ),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
