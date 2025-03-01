import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      home: CurvedScreen(),
    );
  }
}

List<Color> progressColors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.teal
];

class CurvedBackground extends StatelessWidget {
  final List<Map<String, dynamic>> gridItems = [
    {"icon": Icons.file_copy, "title": "Basics", "progress": 0.3},
    {"icon": Icons.work, "title": "Occupation", "progress": 0.7},
    {"icon": Icons.chat, "title": "Conversation", "progress": 0.5},
    {"icon": Icons.place, "title": "location", "progress": 0.6},
    {"icon": Icons.people, "title": "Family members", "progress": 0.2},
    {"icon": Icons.apple, "title": "foods", "progress": 0.8},
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipPath(
        clipper: CurvedBackgroundClipper(),
        child: Container(
          height: 900,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orangeAccent, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      Positioned(
        top: 110,
        left: 40,
        child: Text(
          "Spanish",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      Positioned(
        top: 165,
        left: 30,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFFFFAD2D),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Text("Begineer", style: TextStyle(fontSize: 20)),
              SizedBox(width: 5),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
        ),
      ),
      Positioned(
        top: 140,
        right: 63,
        child: Text("58%", style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      Positioned(
        top: 165,
        right: 50,
        child: Text("completed",
            style: TextStyle(color: Colors.white, fontSize: 15)),
      ),
      Positioned(
        top: 120,
        right: 35,
        child: SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            value: 0.58,
            backgroundColor: Colors.white.withOpacity(0.5),
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 4,
          ),
        ),
      ),
      Positioned(
        top: 245,
        left: 40,
        child: Row(
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 30),
            SizedBox(width: 2),
            Icon(Icons.star, color: Colors.yellow, size: 30),
            SizedBox(width: 10),
            Text("3 Achievements",
                style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.35,
        left: 20,
        right: 20,
        bottom: 0,
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.1,
          ),
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(gridItems[index]["icon"],
                        size: 40, color: progressColors[index]),
                    SizedBox(height: 8),
                    Text(gridItems[index]["title"],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: gridItems[index]["progress"],
                      backgroundColor: Colors.grey[300],
                      color: progressColors[index],
                      minHeight: 6,
                    ),
                    SizedBox(height: 5),
                    Text(
                        "${(gridItems[index]["progress"] * 100).toInt()}% completed",
                        style:
                            TextStyle(fontSize: 12, color: Colors.grey[600])),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}

class CurvedBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 300);
    path.quadraticBezierTo(size.width / 2, 500, size.width, 300);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CurvedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Curse", style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert_outlined, color: Colors.white),
          )
        ],
      ),
      body: Stack(
        children: [CurvedBackground()],
      ),
    );
  }
}
