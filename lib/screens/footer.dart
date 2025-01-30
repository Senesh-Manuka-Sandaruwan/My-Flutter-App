import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 199, 195, 163),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              'lib/assets/images/signup_background.jpg',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Show us some love ❤️ & connect with us!",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, size: 20),
              SizedBox(width: 8),
              Text("0772517094"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, size: 20),
              SizedBox(width: 8),
              Text("crunchysweet@gmail.com"),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "About us:\nCrunchy Sweet (PVT) LTD\n16, Maharagama, Colombo, Sri Lanka",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}