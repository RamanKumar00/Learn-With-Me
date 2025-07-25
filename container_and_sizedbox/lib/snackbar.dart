import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snackbar")),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final Snackbar = SnackBar(
                action: SnackBarAction(label: "undo", onPressed: () {}),
                backgroundColor: Colors.blueAccent,
                duration: const Duration(milliseconds: 3000),

                content: Text("this is snackbar"),
              );
              ScaffoldMessenger.of(context).showSnackBar(Snackbar);
            },
            child: Text("show Snackbar"),
          ),
        ),
      ),
    );
  }
}
