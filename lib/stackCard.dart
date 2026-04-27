import 'package:flutter/material.dart';

class StackCard extends StatelessWidget {
  const StackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),

            //Top Card for GoodMorning John Doe
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.transparent,
              elevation: 0,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Good Morning,",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 205, 167, 240),
                        child: Icon(Icons.person, size: 50),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // OverView Stack Started
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 228, 238, 237),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  //1st Stack
                  Positioned(
                    top: 50,
                    left: 15,
                    child: Container(
                      width: 95,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 208, 202, 228),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 35),
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              195,
                              176,
                              226,
                            ),
                            child: Icon(
                              Icons.file_open_outlined,
                              size: 25,
                              color: const Color.fromARGB(255, 92, 15, 216),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "12",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Tasks"),
                        ],
                      ),
                    ),
                  ),

                  //2nd Stack
                  Positioned(
                    top: 50,
                    left: 125,
                    child: Container(
                      width: 95,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 183, 209, 240),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 35),
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              161,
                              198,
                              243,
                            ),
                            child: Icon(
                              Icons.calendar_today,
                              size: 25,
                              color: const Color.fromARGB(255, 35, 123, 231),
                            ),
                          ),
                          SizedBox(height: 27),
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("In Progress"),
                        ],
                      ),
                    ),
                  ),

                  //3rd Stack
                  Positioned(
                    top: 50,
                    left: 235,
                    child: Container(
                      width: 95,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 196, 248, 226),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 35),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 174, 233, 208),
                            child: Icon(
                              Icons.check,
                              size: 25,
                              color: Color.fromARGB(255, 62, 187, 135),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "7",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Completed"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 350,
              width: 420,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: const Color.fromARGB(255, 210, 238, 252),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            "My Tasks",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "View all",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ],
                      ),
                    ),

                    //First Card
                    SizedBox(
                      height: 65,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color.fromARGB(255, 231, 238, 248),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.file_open,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        top: 10,
                                      ),
                                      child: Text("Design Mobile App"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 37),
                                      child: Text(
                                        "UI/UX Design",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    top: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "In progress",
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Second Card
                    SizedBox(
                      height: 65,

                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color.fromARGB(255, 231, 238, 248),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      200,
                                      201,
                                      245,
                                    ),
                                    child: Icon(
                                      Icons.developer_mode,
                                      color: Color.fromARGB(255, 73, 113, 245),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        top: 10,
                                      ),
                                      child: Text("Develop API"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 18),
                                      child: Text(
                                        "Backend",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    top: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "In progress",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Third Card
                    SizedBox(
                      height: 65,

                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        color: const Color.fromARGB(255, 231, 238, 248),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      204,
                                      247,
                                      213,
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Color.fromARGB(255, 62, 187, 135),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    top: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Text("Fix bugs"),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 10,
                                        ),
                                        child: Text(
                                          "Bug Fixes",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    top: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Completed",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Fourth Card
                    SizedBox(
                      height: 65,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color.fromARGB(255, 231, 238, 248),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      243,
                                      240,
                                      199,
                                    ),
                                    child: Icon(
                                      Icons.timer,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        top: 10,
                                      ),
                                      child: Text("Update Documentation"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 55),
                                      child: Text(
                                        "Documentation",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    top: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Pending",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
