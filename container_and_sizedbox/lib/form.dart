import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => FormWidgetState();
}

class FormWidgetState extends State<FormWidget> {
  String firstname = " ";
  String lastname = " ";
  String email = " ";
  String password = " ";
  final _formkey = GlobalKey<FormState>();

  // ================Function=============
  trysubmit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      submitform();
    } else {
      print("error");
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Widget")),
      body: Center(
        child: Form(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your first name',
                  ),
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "First name should not be empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (Value) {
                    firstname = Value.toString();
                  },
                ),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Second name',
                  ),
                  key: ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "second name should not be empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (Value) {
                    lastname = Value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email name',
                  ),
                  key: ValueKey('Email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Email should not be empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (Value) {
                    email = Value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your Password'),
                  key: ValueKey('Password'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return " Password should not be empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (Value) {
                    password = Value.toString();
                  },
                ),
                TextButton(
                  onPressed: () {
                    trysubmit();
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
