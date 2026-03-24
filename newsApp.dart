import 'package:flutter/material.dart';
import 'package:flutter_2/newsHome.dart';

class NewsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News screen',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 240, 64, 64),
        scaffoldBackgroundColor: const Color.fromARGB(255, 223, 222, 235),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle( 
            fontSize: 12, 
          ),
        ),
      ),
      home: NewsHome(),
    );
  }
}