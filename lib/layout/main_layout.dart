import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_flutter_app/screens/about.dart';
import 'package:my_flutter_app/screens/Get.dart';
import 'package:my_flutter_app/screens/chocolate.dart';
import 'package:my_flutter_app/screens/login.dart';
import 'package:my_flutter_app/screens/signup.dart';
import 'package:my_flutter_app/screens/home.dart';
import 'package:my_flutter_app/providers/theme_provider.dart';

class MainLayout extends StatelessWidget {
  final Widget body;

  MainLayout({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(), // ✅ Ensuring only one header is used
      drawer: CustomDrawer(),
      body: body,
    );
  }
}

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber[100],
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: ClipOval(
          child: Image.asset(
            'lib/assets/images/signup_background.jpg',
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.person, color: Colors.black, size: 32),
          onPressed: () {
            Navigator.pushReplacement(
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

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.amber[100]),
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
          _drawerItem(
            context,
            icon: Icons.home,
            text: 'Home',
            page: HomePage(),
          ),
          _drawerItem(
            context,
            icon: Icons.login,
            text: 'Login',
            page: LoginPage(),
          ),
          _drawerItem(
            context,
            icon: Icons.app_registration,
            text: 'Signup',
            page: SignupPage(),
          ),
          _drawerItem(
            context,
            icon: Icons.info,
            text: 'About',
            page: AboutPage(),
          ),
          _drawerItem(
            context,
            icon: Icons.get_app,
            text: 'Contact Us',
            page: ContactPage(),
          ),

          _drawerItem(
            context,
            icon: Icons.cake,
            text: 'Products',
            page: ChocolatePage(),
          ),
          Divider(),

          // Dark Mode Toggle
          ListTile(
            leading: Icon(
              themeProvider.themeMode == ThemeMode.dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
              size: 26,
              color: Colors.brown,
            ),
            title: Text("Dark Mode", style: TextStyle(fontSize: 18)),
            trailing: Switch(
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeProvider.toggleTheme();
              },
            ),
          ),

          Divider(),
          _drawerItem(
            context,
            icon: Icons.logout,
            text: 'Logout',
            isLogout: true,
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(BuildContext context,
      {required IconData icon,
      required String text,
      Widget? page,
      bool isLogout = false}) {
    return ListTile(
      leading: Icon(icon, size: 26, color: Colors.brown),
      title: Text(text, style: TextStyle(fontSize: 18)),
      onTap: () {
        Navigator.pop(context); // Close drawer
        if (isLogout) {
          _logoutUser(context);
        } else if (page != null) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => page));
        }
      },
    );
  }

  void _logoutUser(BuildContext context) {
    // Navigate to LoginPage and clear all routes
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);

    // Display a logout confirmation message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Logged out successfully!')),
    );
  }
}
