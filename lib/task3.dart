import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const TaskApp(),
    ),
  );
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    List<Widget> iconsList = [
      Icons.file_copy,
      Icons.work,
      Icons.chat_rounded,
      Icons.place,
      Icons.people,
      Icons.apple
    ].map((icon) {
      return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10000),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(1, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Icon(icon, color: Colors.yellow, size: 40),
      );
    }).toList();

    List<String> labels = [
      "Basics",
      "Occupation",
      "Conversation",
      "Places",
      "Family Members",
      "Foods"
    ];

    List<Color> progressColors = [
      Colors.yellow,
      Colors.pink,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.blue
    ];

    return Scaffold(
      backgroundColor: const Color(0xff1C175A),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: screenHeight * 0.9,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFAD2D),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 15,
                              childAspectRatio: 1.1,
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(1, 2),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    iconsList[index],
                                    const SizedBox(height: 5),
                                    Text(labels[index]),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      width: 135,
                                      child: LinearProgressIndicator(
                                        value: 0.5,
                                        minHeight: 7,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                progressColors[index]),
                                        backgroundColor: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
