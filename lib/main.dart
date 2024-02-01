import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Chocolate orange tart",
                description: "chocolate orange tart",
                price: 120,
                image: "chocolate-orange-tart.jpg"),
            ProductBox(
                name: "Blueberry tart",
                description: "blueberry tart",
                price: 120,
                image: "blueberry-tart.jpg"),
            ProductBox(
                name: "Mont Blanc",
                description: "mont blanc",
                price: 130,
                image: "mont-blanc.jpg"),
            ProductBoxURL(
                name: "Matcha tart",
                description: "matcha tart",
                price: 110,
                image: "data:image/jpeg;base64,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"),
            ProductBoxURL(
                name: "Lemon tart",
                description: "lemon tart",
                price: 100,
                image: "https://i0.wp.com/www.thelittleblogofvegan.com/wp-content/uploads/2022/02/vegan-lemon-tart.jpg?fit=%2C&ssl=1"),
            ProductBoxURL(
                name: "Strawberry custard tart",
                description: "strawberry custard tart",
                price: 150,
                image:
                    "https://teakandthyme.com/wp-content/uploads/2023/07/strawberry-custard-tart-DSC_4507-1x1-1200.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

class ProductBoxURL extends StatelessWidget {
  ProductBoxURL(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}