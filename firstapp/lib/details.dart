import 'package:firstapp/Model.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  final ProductModelType data;
  const Detailspage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          height: 550,
          width: MediaQuery.of(context).size.width,
          color: Colors.yellow,
          
          
          child: Column(
            
            children: [
              Image.asset(data.imageUrl),
              Text(data.ProductName),
              Text(data.ProductDescription),
              Text(data.ProductPrice.toString())
              
            ],
          
          ),
          
        )
        
        
        );
  }
}
