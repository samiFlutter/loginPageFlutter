import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                // Update monkey emoji position based on email field text
              },
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Text('🐒'),
                  transform: Matrix4.translationValues(0, 0, 0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (text) {
                // Close monkey emoji's eyes when typing in password field
                setState(() {
                  _isPasswordObscured = true;
                });
              },
              obscureText: _isPasswordObscured,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: GestureDetector(
                  onTap: () {
                    // Toggle password visibility and monkey emoji's eye state
                    setState(() {
                      _isPasswordObscured = !_isPasswordObscured;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: Text('🐵'),
                    transform: Matrix4.translationValues(
                        _isPasswordObscured ? 0 : 20, 0, 0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
