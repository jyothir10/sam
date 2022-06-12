import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff042e60),
        ),
      ),
    );
  }
}
