import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  String name = 'Adriana Lima';
  String bio = 'model';
  int ageOnPhoto = 20;
  int ageNow = 44;
  String residenceCity = "New York";
  String hometown = "Salvador, Brazil";
  String husbund = "Andre L III";
  int numberOfChildren = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 11, 14),
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(237, 253, 11, 193),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/adriana_lima2.jpg'),
            ),
            SizedBox(height: 16),

            Text(
              name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 8),

            Text(
              "I'm a $bio",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),

            SizedBox(height: 8),

            Text(
              "On this photo I'm $ageOnPhoto, now I'm $ageNow",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),

            SizedBox(height: 8),

            Text(
              "I'm from $hometown, but I'm living in $residenceCity",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),

            SizedBox(height: 8),

            Text(
              "I'm married to $husbund and have $numberOfChildren children",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                  color: Colors.white,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.alternate_email),
                  color: Colors.white,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.videocam),
                  color: Colors.white,
                  iconSize: 30,
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              child: Text('Follow', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
