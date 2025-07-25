import 'package:container_and_sizedbox/widgets/container_sized.dart';
import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> eat = ["Orange", "Mango", "Apple", "Banana"];
  Map fruits_person = {
    'fruits': ['Orange', 'Grapes', 'Mango', 'Guava', 'Papaya'],
    'names': ['Karan', 'Ashish', 'Raman', 'Rahul', 'Aanokhi'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListGrid"),
        backgroundColor: Colors.blue,
        elevation: 10,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits_person['fruits']!.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: () {
        //           print(Text(fruits_person['fruits'][index]));
        //         },
        //         leading: Icon(Icons.person),
        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),
        //       ),
        //     );
        //   },
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Card(
              child: Center(child: Text('orange')),
              color: Colors.amber,
            ),
            Card(
              child: Center(child: Text('orange')),
              color: Colors.orange,
            ),
            Card(
              child: Center(child: Text('orange')),
              color: Colors.red,
            ),
            Card(
              child: Center(child: Text('orange')),
              color: Colors.green,
            ),
            Card(
              child: Center(child: Text('orange')),
              color: Colors.blue,
            ),
            Card(
              child: Center(child: Text('orange')),
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
