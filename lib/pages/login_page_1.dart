import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController emailController = TextEditingController();
  int image = 1;
  updateImage() {
    setState(() {
      image = (emailController.text.length % 42) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page '),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
              height: 100, child: Image.asset('assets/monkey/$image.gif')),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              onChanged: (String a) {
                updateImage();
              },
              decoration: InputDecoration(
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (String) {
                setState(() {
                  image = 21;
                });
              },
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          TextButton(onPressed: () {}, child: Text('Forget password ?')),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: Text(
                  'Login ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
