import 'package:flutter/material.dart';
import 'package:flutter_class/Login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstnameController = TextEditingController();
    final TextEditingController lastnameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Text(
                "Hello ! Register to get started",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),

            //First Name TextField
            TextField(
              controller: firstnameController,
              decoration: InputDecoration(
                hintText: "First Name",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            //Last Name TextField
            TextField(
              controller: lastnameController,
              decoration: InputDecoration(
                hintText: "Last Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            //Email TextField
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            //password TextField
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            //Register
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(
                      email: firstnameController.text,
                      password: passwordController.text,
                      firstname: firstnameController.text,
                      lastname: lastnameController.text,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 50),
                backgroundColor: const Color.fromARGB(255, 13, 129, 224),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text("Register", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),

            Text("Or Login with"),
            SizedBox(height: 20),

            Row(
              children: [
                //Facebook Icon
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(155, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Icon(Icons.facebook, size: 30),
                ),
                SizedBox(width: 27),

                //Google Translate
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(155, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Icon(Icons.g_translate, size: 30),
                ),
              ],
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 40, right: 25),
              child: Row(
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(
                            email: emailController.text,
                            password: passwordController.text,
                            firstname: firstnameController.text,
                            lastname: lastnameController.text,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Login Now",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
