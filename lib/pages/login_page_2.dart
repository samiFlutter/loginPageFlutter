import 'package:flutter/material.dart';

import '../service/auth_service.dart';
import 'logup_s.dart';
import 'new_s_test.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(height: 100, child: Image.asset('assets/exchange.jpg')),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: emailController,
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
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: passwordController,
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
          TextButton(
              onPressed: () {},
              child: Text(
                'Forget password ?',
                style: TextStyle(color: Color(0xFF444444), fontSize: 16),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 79, 18, 211),
                ),
                onPressed: () async {
                  if (await signInWithEmailAndPassword(
                      emailController.text, passwordController.text)) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => NewScreen()),
                    );
                  } else {
                    print("wrong info ");
                  }

                  emailController.text = "";
                  passwordController.text = "";
                },
                child: Text(
                  'Login ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text(
                'create account!',
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 18, 211), fontSize: 16),
              )),
        ],
      ),
    );
  }
}
