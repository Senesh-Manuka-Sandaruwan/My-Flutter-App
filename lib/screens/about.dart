import 'package:flutter/material.dart';
import 'package:my_flutter_app/layout/main_layout.dart'; // Import MainLayout

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero Section with "ABOUT US" Text
            Stack(
              children: [
                Image.asset(
                  'lib/assets/images/a1.png',
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  color: Colors.black.withOpacity(0.4),
                  child: Center(
                    child: Text(
                      'ABOUT US',
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

            // About Text Section
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Crunchy Sweet is dedicated to providing the best crunchy treats that combine sweet flavors and satisfying textures. '
                'From classic candies to innovative snacks, we prioritize product quality and innovation. Our mission is to ensure '
                'that every product delights our customers and stands out in the competitive market.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.brown[800],
                  height: 1.5,
                ),
              ),
            ),

            // Pastries Image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'lib/assets/images/a2.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Food Safety Section
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food Safety Policy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Our company adheres to strict food safety protocols, supported by a robust management system '
                    'and trained personnel to ensure quality at every level.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
