import 'package:flutter/material.dart';
import 'package:login_pages/pages/login_page_1.dart';
import 'package:login_pages/pages/login_page_2.dart';
import 'package:login_pages/pages/monkey_login.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Page1(),
      home: Page1(),
    );
  }
}
