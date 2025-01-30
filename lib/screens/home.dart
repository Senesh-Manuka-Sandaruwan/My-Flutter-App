import 'package:flutter/material.dart';
import 'package:my_flutter_app/layout/main_layout.dart'; // Import MainLayout
import 'package:my_flutter_app/screens/chocolate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> cakeImages = [
    'lib/assets/images/c1.png',
    'lib/assets/images/c2.png',
    "lib/assets/images/c3.png",
  ];

  final List<String> sweetImages = [
    "lib/assets/images/s1.png",
    "lib/assets/images/s2.png",
    "lib/assets/images/sw1.jpeg",
    "lib/assets/images/sw2.jpg",
    "lib/assets/images/sw3.jpg",
    "lib/assets/images/sw4.jpg",
    "lib/assets/images/sw6.jpg",
    "lib/assets/images/sw7.png",
    "lib/assets/images/sw8.jpg",
    "lib/assets/images/sw9.png",
  ];

  final List<String> chocolateImages = [
    "lib/assets/images/ch1.png",
    "lib/assets/images/ch2.png",
    "lib/assets/images/ch4.webp",
    "lib/assets/images/ch5.webp",
    "lib/assets/images/ch6.webp",
    "lib/assets/images/ch7.jpg",
    "lib/assets/images/ch8.jpg",
    "lib/assets/images/ch9.png",
    "lib/assets/images/ch10.png",
  ];

  int cakeIndex = 0;
  int sweetIndex = 0;
  int chocolateIndex = 0;

  void nextImage(String type) {
    setState(() {
      switch (type) {
        case 'cake':
          cakeIndex = (cakeIndex + 1) % cakeImages.length;
          break;
        case 'sweet':
          sweetIndex = (sweetIndex + 1) % sweetImages.length;
          break;
        case 'chocolate':
          chocolateIndex = (chocolateIndex + 1) % chocolateImages.length;
          break;
      }
    });
  }

  void previousImage(String type) {
    setState(() {
      switch (type) {
        case 'cake':
          cakeIndex = (cakeIndex - 1 + cakeImages.length) % cakeImages.length;
          break;
        case 'sweet':
          sweetIndex =
              (sweetIndex - 1 + sweetImages.length) % sweetImages.length;
          break;
        case 'chocolate':
          chocolateIndex = (chocolateIndex - 1 + chocolateImages.length) %
              chocolateImages.length;
          break;
      }
    });
  }

  Widget buildCarousel(
      String title, List<String> images, int currentIndex, String type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 150,
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_left, size: 30),
                onPressed: () => previousImage(type),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          if (type == 'chocolate') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChocolatePage()),
                            );
                          }
                        },
                        child: Image.asset(
                          images[(currentIndex + index) % images.length],
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_right, size: 30),
                onPressed: () => nextImage(type),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section with Banner
            Stack(
              children: [
                Image.asset(
                  'lib/assets/images/banner.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 200, // Match the height of the banner
                  color: Colors.black.withOpacity(0.4),
                  child: Center(
                    child: Text(
                      'CRUNCHY SWEETS',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Carousels for Products
            buildCarousel('Cakes', cakeImages, cakeIndex, 'cake'),
            buildCarousel('Sweets', sweetImages, sweetIndex, 'sweet'),
            buildCarousel(
                'Chocolates', chocolateImages, chocolateIndex, 'chocolate'),
          ],
        ),
      ),
    );
  }
}
