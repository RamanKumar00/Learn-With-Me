import 'package:flutter/material.dart';

class container_sized extends StatelessWidget {
  const container_sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container and Sized box')),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            //  shape: BoxShape.circle
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(blurRadius: 20)],
          ),
          height: 100,
          width: 100,
          child: Center(child: Text("Hello", style: TextStyle(fontSize: 20))),
        ),
      ),

      // Center(child: SizedBox(
      //   height: 65,
      //   width: 65,
      //   child: Text("hello world"),
    );
  }
}
// what is difference between sizedbox and container?
// sized box is fixed and they donot much properties than container like add colour, box decoration , etc.
