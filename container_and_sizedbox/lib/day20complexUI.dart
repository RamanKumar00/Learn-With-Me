import 'package:flutter/material.dart';

class InstaProfilePage extends StatelessWidget {
  const InstaProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "wandas.s",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.more_vert, color: Colors.black),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/78.jpg"),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        _StatColumn(label: "Posts", count: "150"),
                        _StatColumn(label: "Followers", count: "2.3k"),
                        _StatColumn(label: "Following", count: "180"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Name + Bio
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Wandas.s",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Text("Photographer | Bihar",
                      style: TextStyle(color: Colors.black)),
                  SizedBox(height: 8),
                ],
              ),
            ),
            // Buttons row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text("Edit Profile"))),
                  const SizedBox(width: 8),
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text("Message"))),
                  const SizedBox(width: 8),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      child: const Icon(Icons.person_add)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // Story Highlights
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[300],
                          backgroundImage: NetworkImage(
                              "https://picsum.photos/id/${index + 10}/200"),
                        ),
                        const SizedBox(height: 6),
                        Text("Story ${index + 1}",
                            style: TextStyle(fontSize: 12, color: Colors.black))
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            // TabBar (Grid & Tagged)
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on)),
                      Tab(icon: Icon(Icons.person_pin_outlined)),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: TabBarView(
                      children: [
                        // Grid posts
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2),
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Image.network(
                              "https://picsum.photos/id/${index + 30}/200",
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                        // Tagged posts placeholder
                        const Center(child: Text("Tagged posts")),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Reusable stats widget
class _StatColumn extends StatelessWidget {
  final String label;
  final String count;

  const _StatColumn({required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
