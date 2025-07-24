import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("Rows and Cols")),
      body: Container(
        width: 200,
        height: h,
        color: Colors.amber,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // //space between, start , end are also used for the alingment
          // crossAxisAlignment: CrossAxisAlignment
          //     .center, // we can use same thing for cross axis alignment
          children: [
            Container(height: 60, width: 60, color: Colors.red),
            Container(height: 60, width: 60, color: Colors.pink),
            Container(height: 60, width: 60, color: Colors.blue),
            Container(height: 60, width: 60, color: Colors.yellow),
            Container(height: 60, width: 60, color: Colors.black),
            Container(height: 60, width: 60, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
// if we decrease the width and height of the container then it show overflowing error then simply we just wrap that container with wrap , but remember that wrap widget doesn't properties of main/cross axis alingment