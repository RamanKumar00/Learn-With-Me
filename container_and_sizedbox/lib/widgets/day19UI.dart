import 'package:flutter/material.dart';

class Day19UI extends StatefulWidget {
  const Day19UI({super.key});

  @override
  State<Day19UI> createState() => _Day19UIState();
}

class _Day19UIState extends State<Day19UI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("UI Cloning")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top stacked section
          Stack(
            children: [
              // Amber background
              Container(height: 500, width: w, color: Colors.amber),

              // Red container on top
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(height: 450, color: Colors.red),
              ),

              // Circle avatar at bottom
              const Positioned(
                bottom: 0,
                right: 25,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),

          // Info section
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Madrid City For Designers",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // ✅ white text
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "This is a random description of the topic",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70, // ✅ softer white
                  ),
                ),
              ],
            ),
          ),

          // Stats row
          Container(
            height: 60,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText("20", Icons.favorite_rounded),
                rowIconText("34", Icons.upload),
                rowIconText("82", Icons.message),
                rowIconText("295", Icons.face),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ✅ Fixed rowIconText with white text + icons
  Widget rowIconText(String text, IconData iconData) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white, // text white
          ),
        ),
        const SizedBox(width: 5),
        Icon(
          iconData,
          size: 22,
          color: Colors.white, // icon white
        ),
      ],
    );
  }
}
