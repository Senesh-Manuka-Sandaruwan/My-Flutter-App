import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/about.dart';
import 'package:my_flutter_app/screens/Get.dart';
import 'package:my_flutter_app/screens/chocolate.dart';
import 'package:my_flutter_app/screens/login.dart';
import 'package:my_flutter_app/screens/signup.dart';
import 'package:my_flutter_app/screens/buy.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber[100],
      elevation: 0,
      iconTheme:
          IconThemeData(color: Colors.black), // Ensures icons match the theme
      title: ClipOval(
        child: Image.asset(
          'lib/assets/images/signup_background.jpg',
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.person, color: Colors.black, size: 32),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignupPage()));
          },
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart, color: Colors.black, size: 32),
          onPressed: () {},
        ),
      ],
    );
  }
}

class MainLayout extends StatelessWidget {
  final Widget body;

  MainLayout({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(),
      drawer: CustomDrawer(), // Sidebar menu
      body: body,
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage('lib/assets/images/signup_background.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Menu Items
          _drawerItem(
            icon: Icons.login,
            text: 'Login',
            onTap: () => _navigateTo(context, LoginPage()),
          ),
          _drawerItem(
            icon: Icons.app_registration,
            text: 'Signup',
            onTap: () => _navigateTo(context, SignupPage()),
          ),
          _drawerItem(
            icon: Icons.info,
            text: 'About',
            onTap: () => _navigateTo(context, AboutPage()),
          ),
          _drawerItem(
            icon: Icons.get_app,
            text: 'Contact Us',
            onTap: () => _navigateTo(context, ContactPage()),
          ),
          _drawerItem(
            icon: Icons.shopping_cart,
            text: 'Buy Products',
            onTap: () => _navigateTo(
              context,
              BuyPage(
                productName: "Sample Product",
                productDescription: "A delicious product to buy.",
                productImage: 'lib/assets/images/c1.png',
                productPrice: 10.0,
              ),
            ),
          ),
          _drawerItem(
            icon: Icons.cake,
            text: 'Products',
            onTap: () => _navigateTo(context, ChocolatePage()),
          ),
          Divider(), // Adds a visual separation
          _drawerItem(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {
              Navigator.pop(context); // Close drawer
              // Add logout logic here
            },
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, size: 26, color: Colors.brown),
      title: Text(text, style: TextStyle(fontSize: 18)),
      onTap: onTap,
    );
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.pop(context); // Close the drawer first
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
