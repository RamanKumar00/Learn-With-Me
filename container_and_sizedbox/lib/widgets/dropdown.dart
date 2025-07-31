import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => DropDownWidgetState();
}

class DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalues = "orange";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDown Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                value: selectedvalues,
                isExpanded: true,
                dropdownColor: Colors.grey,
                icon: Icon(Icons.arrow_circle_down),
                onChanged: (String? newvalues) {
                  setState(() {
                    selectedvalues = newvalues!;
                  });
                },

                items: <String>["orange", "grapes", "guava", "mango", "apple"]
                    .map<DropdownMenuItem<String>>((String values) {
                      return DropdownMenuItem<String>(
                        value: values,
                        child: Text(values),
                      );
                    })
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
