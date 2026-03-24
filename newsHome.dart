import 'package:flutter/material.dart';

class NewsHome extends StatelessWidget {
  final List<Map<String, String>> news = List.generate(
    20,
    (i) => {
      'title': 'News heading ${i + 1}',
      'subtitle': 'News overview ${i + 1}',
      'image': 'https://picsum.photos/seed/news$i/400/200',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: const Color.fromARGB(255, 193, 198, 206),
        actions: [
          Icon(Icons.search,),
          SizedBox(width: 12,),
          Icon(Icons.menu),
          SizedBox(width: 16,)
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: news.length,
        itemBuilder: (context, index) {
          final item = news[index];
          return Card(
            color: const Color.fromARGB(255, 249, 252, 255),
            margin: EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Stack(
                  children: [
                    Image.network(
                      item['image']!,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 12,
                      right: 12,
                      bottom: 12,
                      child: Text(
                        item['title']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.6),
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsGeometry.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['subtitle']!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
