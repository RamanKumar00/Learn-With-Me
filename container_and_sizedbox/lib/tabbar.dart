import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // must match number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat), text: "CHATS"),
              Tab(icon: Icon(Icons.call), text: "CALLS"),
              Tab(icon: Icon(Icons.music_note), text: "MUSIC"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Chats Screen")),
            Center(child: Text("Calls Screen")),
            Center(child: Text("Status Screen")),
          ],
        ),
      ),
    );
  }
}
