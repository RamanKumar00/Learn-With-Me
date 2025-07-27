import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Sheet Widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.purple,
              isDismissible: true,
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    ListTile(title: Text("orange"), subtitle: Text("karan")),
                    ListTile(title: Text("Apple"), subtitle: Text("Sintu")),
                    ListTile(title: Text("Banana"), subtitle: Text("Romil")),
                    ListTile(title: Text("Mango"), subtitle: Text("Raman")),
                    ListTile(title: Text("Papaya"), subtitle: Text("Bipin")),
                    ListTile(title: Text("Kiwi"), subtitle: Text("Damodar")),
                  ],
                );
              },
            );
          },
          child: Text(
            "BottomSheet",
            style: TextStyle(backgroundColor: Colors.blue),
          ),
        ),
      ),
    );
  }
}
