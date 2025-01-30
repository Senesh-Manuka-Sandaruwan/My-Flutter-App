import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_flutter_app/layout/main_layout.dart';
import 'package:my_flutter_app/screens/Get.dart';
import 'package:my_flutter_app/screens/about.dart';
import 'package:my_flutter_app/screens/signup.dart';
import 'package:my_flutter_app/screens/home.dart';
import 'package:my_flutter_app/screens/login.dart';
import 'package:my_flutter_app/providers/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ThemeProvider()), // Wrap entire app
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Crunchy Sweet',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode, // Apply theme mode
          theme: ThemeData(
            primarySwatch: Colors.brown,
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            primarySwatch: Colors.deepPurple,
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black87,
            cardColor: Colors.grey[800],
            textTheme: TextTheme(
              bodyLarge:
                  TextStyle(color: Colors.white), // Updated for Flutter 3.16+
              bodyMedium: TextStyle(color: Colors.white70),
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => MainLayout(body: HomePage()),
            '/about': (context) => MainLayout(body: AboutPage()),
            '/get': (context) => MainLayout(body: ContactPage()),
            '/signup': (context) => MainLayout(body: SignupPage()),
            '/login': (context) => MainLayout(body: LoginPage()),
          },
        );
      },
    );
  }
}
