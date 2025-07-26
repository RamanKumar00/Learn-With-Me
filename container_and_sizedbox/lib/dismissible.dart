import 'package:flutter/material.dart';

class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  List<String> fruits = ["Orange", "Mango", "Apple", "Banana"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dismissible")),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
            key: Key(fruit),
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),
            onDismissed: (direction) {
              setState(() {
                fruits.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("$fruit dismissed"),
                  backgroundColor: direction == DismissDirection.startToEnd
                      ? Colors.red
                      : Colors.green,
                ),
              );
            },
            child: ListTile(
              title: Text(fruit),
            ),
          );
        },
      ),
    );
  }
}
