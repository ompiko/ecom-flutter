import 'package:flutter/material.dart';

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
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(product_picture, fit: BoxFit.cover,)),
            ),
          )),
    );
  }
}
