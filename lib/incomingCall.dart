import 'package:flutter/material.dart';

class incomingCall extends StatelessWidget {
  const incomingCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 50)),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.call),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "9876543210",
                            style: TextStyle(color: Colors.green),
                          ),
                          Text(
                            "Incoming",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Dial", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 10),
                      Text(
                        "Call History",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
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
