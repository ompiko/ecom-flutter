import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/categories/chairOffice.png',
            imageCaption: 'Office Chair',
          ),
          Category(
            imageLocation: 'images/categories/desk.png',
            imageCaption: 'Desk',
          ),
          Category(
            imageLocation: 'images/categories/deskPC.png',
            imageCaption: 'Desk for PC',
          ),
          Category(
            imageLocation: 'images/categories/livingRoom.png',
            imageCaption: 'Sofa',
          ),
          Category(
            imageLocation: 'images/categories/pixarLamp.png',
            imageCaption: 'Desk Lamp',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageCaption,
    this.imageLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(imageLocation),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption, style: new TextStyle(fontSize: 14.0), textAlign: TextAlign.center,),
            ),
          ),
        ),
      ),
    );
  }
}
