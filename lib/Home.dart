import 'package:flutter/material.dart';
import 'package:flutter_class/Login_Page.dart';
import 'package:flutter_class/call_login.dart';

class HomeScreen extends StatelessWidget {
  String username;
  String password;

  HomeScreen({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, top: 100, right: 20),
        child: Column(
          children: [
            Text(
              "Welcome $username !!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
