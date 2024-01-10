import 'package:firstapp/Model.dart';
import 'package:firstapp/details.dart';
import 'package:firstapp/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          drawer: const Navbar(),
          appBar: AppBar(
            title: const Text("Products"),
            backgroundColor: Colors.amber,
          
          ),
          body: Container(
            color: Colors.blue,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.5),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detailspage(
                                  data: pmt[index],
                                ))),
                    child: Container(
                      height: 350,
                      color: Colors.green,
                      child: Column(
                        children: [
                          Image.asset("images/computer.jpg"),
                          Image.asset("images/shoe.png"),
                        ],
                      ),
                    ));
              },
              itemCount: pmt.length,
            ),
          ),
        ),
      ),
    );
  }
}

List<ProductModelType> pmt = [
  ProductModelType(
      imageUrl: "images/computer.jpg",
      ProductName: 'Computer',
      ProductDescription: 'This is a desktop',
      ProductPrice: 40000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
  ProductModelType(
      imageUrl: "images/shoe.png",
      ProductName: 'Nike',
      ProductDescription: 'This is a shoes',
      ProductPrice: 7000),
];
