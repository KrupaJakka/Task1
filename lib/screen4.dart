import 'package:flutter/material.dart';

class ShortsScreen3 extends StatefulWidget {
  @override
  _ShortsScreen3State createState() => _ShortsScreen3State();
}

class _ShortsScreen3State extends State<ShortsScreen3> {
  final images = [
    "https://static.vecteezy.com/system/resources/previews/030/314/122/large_2x/glowing-3d-tech-network-background-vertical-mobile-wallpaper-ai-generated-free-photo.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                images[index],
                fit: BoxFit.cover,
              ),
              Positioned(
                top: screenHeight * 0.05,
                left: screenWidth * 0.35,
                child: Row(
                  children: [
                    _buildMenuButton(Icons.subscriptions, "Subscription",
                        screenWidth * 0.24),
                    SizedBox(width: screenWidth * 0.03),
                    _buildMenuButton(Icons.wifi, "Live", screenWidth * 0.15),
                    SizedBox(width: screenWidth * 0.03),
                    _buildMenuButton(Icons.local_fire_department, "Trends",
                        screenWidth * 0.17),
                  ],
                ),
              ),
              Positioned(
                right: screenWidth * 0.04,
                bottom: screenHeight * 0.12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _buildIconButton(Icons.thumb_up_outlined, "1.4M"),
                    _buildIconButton(Icons.thumb_down_outlined, "Dislike"),
                    _buildIconButton(Icons.comment, "4,095"),
                    _buildIconButton(Icons.share_outlined, "Share"),
                    _buildIconButton(Icons.reviews_outlined, "19K"),
                  ],
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.06,
                      color: Colors.black,
                      child: Row(
                        children: [
                          SizedBox(width: screenWidth * 0.05),
                          Icon(Icons.audiotrack_outlined, color: Colors.white),
                          SizedBox(width: screenWidth * 0.02),
                          Expanded(
                            child: Text(
                              "School RoofTop(Bird Sounds)  -   hisohkah",
                              style: TextStyle(color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10,
                      bottom: 20,
                      child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2023/01/03/00/28/ai-generated-7693402_1280.jpg",
                            fit: BoxFit.fill,
                          ))),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 2,
                  child: LinearProgressIndicator(
                    value: 0.5,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    backgroundColor: Colors.grey[300],
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.05,
                bottom: screenHeight * 0.06,
                child: Text(
                  "He tells when he is thirsty",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                left: screenWidth * 0.04,
                bottom: screenHeight * 0.10,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: screenWidth * 0.045,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Text("@The PlantiBoys",
                        style: TextStyle(color: Colors.white)),
                    SizedBox(width: screenWidth * 0.03),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.03,
                          vertical: screenHeight * 0.005),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Text("Subscribe", style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String label, double width) {
    return Container(
      height: 30,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 15, color: Colors.white.withOpacity(0.5)),
          SizedBox(width: 4),
          Text(label,
              style: TextStyle(
                  fontSize: 10, color: Colors.white.withOpacity(0.5))),
        ],
      ),
    );
  }
  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(icon: Icon(icon, color: Colors.white), onPressed: () {}),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 10)),
        SizedBox(height: 10),
      ],
    );
  }
}
