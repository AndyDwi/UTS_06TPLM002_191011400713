import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andy Dwi Prasetyo - 191011400713',
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Andy Dwi Prasetyo - 191011400713',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 2.3,
            children: [
              buildGridItem(
                  'Nike Air Max Excee Men',
                  Color.fromARGB(255, 255, 23, 23),
                  15,
                  'https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png',
                  'Rp.300.000'),
              buildGridItem(
                  'Jordan Air 1 Zoom CMFT 2',
                  Color.fromARGB(255, 255, 76, 44),
                  15,
                  'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
                  'Rp.400.000'),
              buildGridItem(
                  'Nike Air Force 1 Shadow',
                  Color.fromARGB(255, 175, 125, 76),
                  15,
                  'https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png',
                  'Rp.550.000'),
              buildGridItem(
                  'Nike Blazer Mid 77 Next',
                  Color.fromARGB(255, 255, 190, 59),
                  15,
                  'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
                  'Rp.500.000'),
              buildGridItem(
                  'Nike React Revision',
                  Color.fromARGB(255, 176, 160, 39),
                  15,
                  'https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png',
                  'Rp.700.000'),
              buildGridItem(
                  'Converse Chuck Taylor All Star',
                  Color.fromARGB(255, 127, 150, 0),
                  15,
                  'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
                  'Rp.800.000'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(String text, Color color, double borderRadius,
      String imageUrl, String price) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    price,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.only(left: 10.0),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
