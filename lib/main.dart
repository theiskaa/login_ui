import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Screen",
      // ignore: missing_required_param
      home: LoginScreen(),
    );
  }
}
