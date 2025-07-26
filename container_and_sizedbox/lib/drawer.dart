import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://media.gettyimages.com/id/2186592795/photo/perth-australia-virat-kohli-of-india-celebrates-scoring-a-century-during-day-three-of-the.jpg?s=612x612&w=gi&k=20&c=X-KlrGevMjbt0mqtmVvIZ4QZw2H1GwYz0kRX8sFiY_4=",
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Raman Kumar", style: TextStyle(fontSize: 20)),
                          Text("ramankr7321@gmail.com"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.folder), title: Text("My file")),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Shared with me "),
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text("PYQ"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("Uploaded documents"),
              ),
              ListTile(leading: Icon(Icons.notes), title: Text("Notes")),
              ListTile(
                leading: Icon(Icons.contact_emergency),
                title: Text("Contacts"),
              ),
              ListTile(leading: Icon(Icons.music_note), title: Text("Songs")),
              ListTile(leading: Icon(Icons.games), title: Text("Games")),
              ListTile(leading: Icon(Icons.image), title: Text("Pucho pics")),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text('Drawer Widget')),
      body: Container(child: Center(child: Text("Hey there!"))),
    );
  }
}
