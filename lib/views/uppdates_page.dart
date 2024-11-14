import 'package:flutter/material.dart';

import '../utils/colors.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
                radius: 28,
              ),
              title: Text(
                "My status",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text("Tap to add status update"),
              trailing: Icon(Icons.add_circle, color: Colors.green),
            ),
            SizedBox(height: 20),
            Text(
              "Recent updates",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile4.jpg'),
                radius: 24,
              ),
              title: Text("+8801821356969", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("9:10 AM"),
            ),
            SizedBox(height: 20),
            Text(
              "Channels",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text("Stay updated on topics that matter to you. Find channels to follow below."),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/icc_logo.jpg'), // replace with your image asset path
                      radius: 20,
                    ),
                    title: Text("ICC"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/barcha.jpeg'), // replace with your image asset path
                      radius: 20,
                    ),
                    title: Text("FC Barcelona"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/bd.png'), // replace with your image asset path
                      radius: 20,
                    ),
                    title: Text("Bangladesh"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        onPressed: () {},
        child: Icon(Icons.camera_alt_rounded, color: Colors.black),
      ),
    );
  }
}
