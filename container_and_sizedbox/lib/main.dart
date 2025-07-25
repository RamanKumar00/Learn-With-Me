import 'package:container_and_sizedbox/Snackbar.dart';
//import 'package:container_and_sizedbox/widgets/buttons.dart';
// import 'package:container_and_sizedbox/widgets/row_and_column.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      home: Snackbar(),
    );
  }
}
