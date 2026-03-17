import 'package:flutter/material.dart';
import 'constants.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  final String price;
  final bool sale;
  final double rating;

  ProductCard({
    required this.image,
    required this.title,
    required this.category,
    required this.price,
    required this.rating,
    this.sale = false,
  });

  List<Widget> buildStars() {
    List<Widget> stars = [];

    for (int i = 1; i <= 5; i++) {
      if (i <= rating) {
        stars.add(Icon(Icons.star, size: 16, color: Colors.brown));
      } else if (i - rating <= 0.5) {
        stars.add(Icon(Icons.star_half, size: 16, color: Colors.brown));
      } else {
        stars.add(Icon(Icons.star_border, size: 16, color: Colors.brown));
      }
    }

    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 245, 234),
        borderRadius: BorderRadius.circular(cardRadius),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 54, 38, 16),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  height: imageHeight,
                  width: 120,
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 120,
                    color: const Color.fromARGB(255, 110, 86, 48),
                    child: Center(child: Text("No Image")),
                  ),
                ),
              ),
              if (sale)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 102, 58, 23),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "SALE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(width: 10),

          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Flexible(
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),

                SizedBox(height: 6),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      category,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: 6),

                Expanded(
                  child: Container(
                    child: Text(
                      price,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: priceColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Spacer(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 8),
              Row(children: buildStars()),
              SizedBox(height: 8),

              Align(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 146, 107, 84),
                      foregroundColor: const Color.fromARGB(255, 255, 241, 229),
                    ),
                    child: Text("Buy"),
                  ),
                ),
              ),

              SizedBox(height: 8),

              Align(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 245, 232),
                      foregroundColor: const Color.fromARGB(255, 71, 52, 35),
                      side: BorderSide(
                        color: const Color.fromARGB(255, 71, 52, 35),

                        width: 1,
                      ),
                    ),
                    child: Text('Favorites'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
