import 'package:flutter/material.dart';
import 'buy.dart';
// import 'footer.dart'; // Import the CustomFooter widget
import 'package:my_flutter_app/layout/main_layout.dart';
// Import the CustomHeader widget

class ChocolatePage extends StatelessWidget {
  final List<Map<String, dynamic>> chocolates = [
    {
      'name': 'Cadbury Dairy Milk Fruit and Nut',
      'image': 'lib/assets/images/choco2.png',
      'price': 2250.0,
      'description':
          'Rich and creamy chocolate with a delightful mix of fruit and nuts.',
      'brand': 'Cadbury',
    },
    {
      'name': 'Cadbury Dairy Milk Classic',
      'image': 'lib/assets/images/choco3.png',
      'price': 2250.0,
      'description':
          'The classic taste of milk chocolate, perfect for all ages.',
      'brand': 'Cadbury',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k1.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k2.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k3.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k4.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k5.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k6.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k7.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Nestle KitKat',
      'image': 'lib/assets/images/k8.png', // Add the appropriate image path
      'price': 2000.0,
      'description': 'Crispy wafer covered in delicious chocolate.',
      'brand': 'Nestle',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/m1.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Mars',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/m2.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Mars',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/m3.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Mars',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/m4.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Mars',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/m5.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Mars',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/m6.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Mars',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/m7.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Mars',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/mk1.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Milka',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/mk2.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Milka',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/mk3.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Milka',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/mk4.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Milka',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/mk5.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Milka',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/mk6.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Milka',
    },
    {
      'name': 'Mars Bar',
      'image': 'lib/assets/images/mk7.png', // Add the appropriate image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Milka',
    },
    {
      'name': 'Twix Bar 1',
      'image': 'lib/assets/images/t1.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Twix',
    },
    {
      'name': 'Twix Bar 2',
      'image': 'lib/assets/images/t2.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Twix',
    },
    {
      'name': 'Twix Bar 3',
      'image': 'lib/assets/images/t3.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Twix',
    },
    {
      'name': 'Twix Bar 4',
      'image': 'lib/assets/images/t4.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Twix',
    },
    {
      'name': 'Twix Bar 5',
      'image': 'lib/assets/images/t5.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Twix',
    },
    {
      'name': 'Twix Bar 6',
      'image': 'lib/assets/images/t6.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Twix',
    },
    {
      'name': 'Twix Bar 7',
      'image': 'lib/assets/images/t7.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and caramel.',
      'brand': 'Twix',
    },
    {
      'name': 'Toblerone 1',
      'image': 'lib/assets/images/t01.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Toblerone 2',
      'image': 'lib/assets/images/t02.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Toblerone 3',
      'image': 'lib/assets/images/t03.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Toblerone 4',
      'image': 'lib/assets/images/t04.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Toblerone 5',
      'image': 'lib/assets/images/t05.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Toblerone 6',
      'image': 'lib/assets/images/t06.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Toblerone 7',
      'image': 'lib/assets/images/t07.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Toblerone 8',
      'image': 'lib/assets/images/t08.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat and almond.',
      'brand': 'Toblerone',
    },
    {
      'name': 'Snickers 1',
      'image': 'lib/assets/images/sn1.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat, caramel, and peanuts.',
      'brand': 'Snickers',
    },
    {
      'name': 'Snickers 2',
      'image': 'lib/assets/images/sn2.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat, caramel, and peanuts.',
      'brand': 'Snickers',
    },
    {
      'name': 'Snickers 3',
      'image': 'lib/assets/images/sn3.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat, caramel, and peanuts.',
      'brand': 'Snickers',
    },
    {
      'name': 'Snickers 4',
      'image': 'lib/assets/images/sn4.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat, caramel, and peanuts.',
      'brand': 'Snickers',
    },
    {
      'name': 'Snickers 5',
      'image': 'lib/assets/images/sn5.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat, caramel, and peanuts.',
      'brand': 'Snickers',
    },
    {
      'name': 'Snickers 6',
      'image': 'lib/assets/images/sn6.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat, caramel, and peanuts.',
      'brand': 'Snickers',
    },
    {
      'name': 'Snickers 7',
      'image': 'lib/assets/images/sn7.png', // Updated image path
      'price': 1800.0,
      'description': 'Chocolate bar with nougat, caramel, and peanuts.',
      'brand': 'Snickers',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Group chocolates by brand
    Map<String, List<Map<String, dynamic>>> groupedChocolates = {};
    for (var chocolate in chocolates) {
      String brand = chocolate['brand'];
      if (!groupedChocolates.containsKey(brand)) {
        groupedChocolates[brand] = [];
      }
      groupedChocolates[brand]!.add(chocolate);
    }

    return MainLayout(
      // Use CustomHeader here
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner with Overlay
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    'lib/assets/images/choco1.png',
                    width: screenWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 200, // Match the height of the banner
                  color: Colors.black.withOpacity(0.4),
                  child: Center(
                    child: Text(
                      'Chocolates',
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
            SizedBox(height: screenHeight * 0.02),

            // Chocolate Description
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                'Chocolate, a beloved treat enjoyed by people of all ages, has a rich and fascinating history. '
                'Its roots trace back to ancient Mesoamerican civilizations like the Maya and the Aztecs, '
                'who revered the cacao bean as a gift from the gods.',
                style: TextStyle(fontSize: screenWidth * 0.045),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            // Grouped Chocolate Items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                children: groupedChocolates.entries.map((entry) {
                  String brand = entry.key;
                  List<Map<String, dynamic>> chocolates = entry.value;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Brand Title
                      Text(
                        brand,
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),

                      // Chocolate Items
                      Column(
                        children: chocolates.map((chocolate) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BuyPage(
                                    productName: chocolate['name'],
                                    productDescription:
                                        chocolate['description'],
                                    productImage: chocolate['image'],
                                    productPrice: chocolate['price'],
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.only(bottom: screenHeight * 0.02),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Chocolate Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        chocolate['image'],
                                        width: screenWidth * 0.25,
                                        height: screenWidth * 0.25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.03),

                                    // Chocolate Details
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            chocolate['name'],
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.04,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.005),
                                          Text(
                                            'LKR ${chocolate['price'].toStringAsFixed(2)}',
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Add to Cart Button
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BuyPage(
                                              productName: chocolate['name'],
                                              productDescription:
                                                  chocolate['description'],
                                              productImage: chocolate['image'],
                                              productPrice: chocolate['price'],
                                            ),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightGreen,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: screenWidth * 0.03,
                                          vertical: screenHeight * 0.015,
                                        ),
                                        textStyle: TextStyle(
                                            fontSize: screenWidth * 0.035),
                                      ),
                                      child: Text('Add'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                          height: screenHeight * 0.02), // Space between brands
                    ],
                  );
                }).toList(),
              ),
            ),

            // // Footer
            // CustomFooter(), // Use CustomFooter here
          ],
        ),
      ),
    );
  }
}
