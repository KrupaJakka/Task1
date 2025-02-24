import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Task1(), // Navigating to Task1
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffF8851A),
              Color(0xffF8A555),
              Color(0xffFCCDA1),
              Color(0xffF6F8F7)
            ],
            stops: [0, 0.2, 0.4, 0.6],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section (Previously in AppBar)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Good afternoon, Krupa",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Text(
                          "9347302039",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          height: 25,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 245, 219, 194),
                          ),
                          child: const Center(
                            child: Text(
                              "Prepaid",
                              style: TextStyle(
                                color: Color.fromARGB(255, 239, 119, 7),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.notifications_outlined),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Main Content Section
                Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 480,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffFFE1EC).withOpacity(0.4)),
                          ),
                          Container(
                            height: 150,
                            width: 480,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                        width: 150,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black
                                                    .withOpacity(0.1))),
                                        child: Icon(Icons.mobiledata_off),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: 40, color: Colors.red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "|",
                                        style: TextStyle(
                                            fontSize: 40,
                                            color:
                                                Colors.black.withOpacity(0.3)),
                                      ),
                                      const Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Pack",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                          Text(
                                            "  Expired",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.pink),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 0,
                                        width: 100,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Your action
                                        },
                                        style: ElevatedButton.styleFrom(
                                          side:
                                              BorderSide(color: Colors.orange),
                                          foregroundColor:
                                              Colors.orange, // Text color
                                        ),
                                        child: Text("View Pack"),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Your action
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orange,
                                          foregroundColor:
                                              Colors.white, // Text color
                                        ),
                                        child: Text("Recharge"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                              left: 20,
                              bottom: 20,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add_alert,
                                    color: Colors.pink,
                                  ),
                                  Text(
                                    "uh-ho your plan has expired Recharge now",
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                  SizedBox(
                                    width: 85,
                                  ),
                                  Text("Recharge",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 14, 14, 188)))
                                ],
                              ))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                          height: 100,
                          width: 480,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 184, 217, 246),
                                Color.fromARGB(255, 214, 229, 242),
                                Color(0xffDFEDF8)
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 20,
                                top: 10,
                                child: Text(
                                  "App Exclusive Offer",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 2, 2, 71)),
                                ),
                              ),
                              const Positioned(
                                  left: 20,
                                  bottom: 53,
                                  child: Text(
                                    "Applicable on rechargees above Rs.249",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(255, 6, 16, 131)),
                                  )),
                              const Positioned(
                                  left: 20,
                                  bottom: 30,
                                  child: Text(
                                    "Click Now >>",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 2, 2, 71)),
                                  )),
                              const Positioned(
                                  left: 25,
                                  bottom: 15,
                                  child: Text(
                                    "T&C apply",
                                    style: TextStyle(
                                        fontSize: 7,
                                        color: Color.fromARGB(255, 6, 16, 131)),
                                  )),
                              Positioned(
                                right: 90,
                                bottom: 10,
                                child: Container(
                                    child: const Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 230, 93, 13),
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(1, 2))
                                      ]),
                                )),
                              ),
                              const Positioned(
                                  right: 45,
                                  bottom: 25,
                                  child: Text(
                                    "% OFF",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 1, 1, 95)),
                                  )),
                              const Positioned(
                                  right: 60,
                                  bottom: 55,
                                  child: Text(
                                    "GET",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 1, 1, 95)),
                                  ))
                            ],
                          )),
                      const SizedBox(height: 20.4),
                      Container(
                        height: 286,
                        width: 480,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.1))),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 20,
                                top: 20,
                                child: Text(
                                  "Quick Actions",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 1, 1, 95)),
                                )),
                            Positioned(
                              left: 60,
                              top: 70,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.mobile_friendly,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text("Recharge",
                                          style: TextStyle(fontSize: 13))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.payment,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text("Pay Bill",
                                          style: TextStyle(fontSize: 13))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.phone,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text("Landline",
                                          style: TextStyle(fontSize: 13))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.wifi,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text("Book Fiber",
                                          style: TextStyle(fontSize: 13))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 60,
                              top: 180,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.sim_card,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text("UpGrade to\n 4G SIM",
                                          style: TextStyle(fontSize: 13))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.contact_phone,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text("Choose Your\n Number",
                                          style: TextStyle(fontSize: 13))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.do_not_disturb,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text(
                                        "Do not\nDistrub",
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color:
                                                Colors.black.withOpacity(0.1)),
                                        child: SafeArea(
                                            child: Center(
                                          child: Icon(
                                            Icons.games,
                                            size: 20,
                                          ),
                                        )),
                                      ),
                                      Text("Games",
                                          style: TextStyle(fontSize: 13))
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
