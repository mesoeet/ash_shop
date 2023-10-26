import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
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
      appBar: AppBar(
        title: Text("Ash Shop"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "Mawar",
            description: "romantisme, cinta, keindahan, dan keberanian",
            price: 1000,
            image: "1.jpeg",
          ),
          ProductBox(
            name: "Lily",
            description: "keabadian cinta, dan bunga mawar yang menyiratkan cinta sejati.",
            price: 2000,
            image: "2.jpeg",
          ),
          ProductBox(
            name: "Lavender",
            description: "aromaterapi yang dapat digunakan sebagai penenang di saat sulit tidur, gangguan pencernaan, hingga depresi",
            price: 3000,
            image: "3.jpeg",
          ),
          ProductBox(
            name: "Matahari",
            description: "kebahagiaan karena warnanya yang cerah dan sifatnya yang penuh cahaya",
            price: 4000,
            image: "4.jpeg",
          ),
          ProductBox(
            name: "Tulip",
            description: "pernikahan, keharmonisan, dan kebersamaan",
            price: 1500,
            image: "6.jpeg",
          ),
          ProductBox(
            name: "Stephanotis",
            description: "kebahagiaan pernikahan.",
            price: 4500,
            image: "5.jpeg",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("image/"+ image), // Make sure to specify the correct path
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
