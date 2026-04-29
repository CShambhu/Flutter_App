import 'package:flutter/material.dart';
import 'package:flutter_class/Register.dart';

class Login extends StatelessWidget {
  String firstname;
  String lastname;
  String email;
  String password;

  Login({
    super.key,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("username: $firstname"),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: Center(
                child: Text(
                  "Welcome Back ! Glad to see you, Again !",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight(800)),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "enter your name ",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "enter your password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text("Login ", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text("Register", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
