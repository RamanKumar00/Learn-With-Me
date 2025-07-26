import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Widget")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://thumbs.dreamstime.com/b/modern-random-cartoon-sticker-detailed-illustrated-isolated-white-background-modern-random-cartoon-sticker-detailed-illustrated-353166851.jpg",
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
