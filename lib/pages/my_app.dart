// my_app.dart
import 'package:flutter/material.dart';
import 'Login.dart'; // Import your LoginPage
import 'MyHomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData(
        primarySwatch:Colors.blueGrey,
      ),
      home: LoginNavigator(),
      // Use LoginNavigator as the initial screen
    );
  }
}

class LoginNavigator extends StatefulWidget {
  @override
  _LoginNavigatorState createState() => _LoginNavigatorState();
}

class _LoginNavigatorState extends State<LoginNavigator> {
  bool isLoggedIn = false; // You can use this to track if the user is logged in

  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? MyHomePage(title: '') : LoginPage();
  }
}
