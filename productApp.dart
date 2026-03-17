import 'package:flutter/material.dart';
import 'package:flutter_1/productCard.dart';

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 231, 219),
        appBar: AppBar(
          title: Text("Menu"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 250, 241, 218),
        ),
        body:
        Center(
          child: ConstrainedBox(constraints: BoxConstraints(
            maxWidth: 800,
          ),
          child: 
         Padding(
          padding: EdgeInsets.all(9),
          child: Container(
          child: Column(
            children: [
              Expanded(
                child: ProductCard(
                  image: "images/applepie.jpg",
                  title: "Apple Pie",
                  category: "Pie",
                  price: "\$35",
                  rating: 4.5,
                ),
              ),

              Expanded(
                child: ProductCard(
                    image: "images/chocolatecheesecake.jpg",
                      title: "Chocolate Cheesecake",
                      category: "Cheesecake",
                      price: "\$49",
                      sale: true,
                      rating: 4.5,
                ),
              ),

              Expanded(
                child: ProductCard(
                  image: "images/redvelvetcupcake.jpg",
                  title: "Red Velvel Cupcake",
                  category: "Cupcake",
                  price: "\$20",
                  rating: 4,
                ),
              ),

               Expanded(
                child: ProductCard(
                    image: "images/tiramisu.jpg",
                      title: "Tiramisu",
                      category: "Tiramisu",
                      price: "\$49",
                      sale: true,
                      rating: 5,
                ),
              ),

            ],
          ),
          )
        ),
          )
        )
      ),
    );
  }
}
