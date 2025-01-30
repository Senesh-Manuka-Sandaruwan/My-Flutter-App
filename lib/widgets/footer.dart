import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen[200],
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.phone, size: 20),
              SizedBox(width: 8),
              Text("0772517094"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email, size: 20),
              SizedBox(width: 8),
              Text("crunchysweet@gmail.com"),
            ],
          ),
          SizedBox(height: 10),
          Text("About us:\nCrunchy Sweet (PVT) LTD\n16, Maharagama, Colombo, Sri Lanka"),
        ],
      ),
    );
  }
}
