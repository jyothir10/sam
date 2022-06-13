import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/splash';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  DateTime currentBackPressTime;
  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;

      Toast.show("Press back again to exit",
          duration: Toast.lengthShort, gravity: Toast.bottom);
      return Future.value(false);
    }
    return Future.value(true);
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xff042e60),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo.png",
                height: MediaQuery.of(context).size.height * .46,
              )
            ],
          ),
        ),
      ),
    );
  }
}
