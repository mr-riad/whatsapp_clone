import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/call_page.dart';
import 'package:whatsapp_clone/views/group_page.dart';
import 'package:whatsapp_clone/views/massage.dart';
import 'package:whatsapp_clone/views/uppdates_page.dart';

import '../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  // List of pages for bottom navigation tabs
  final List<Widget> pages = [
    Center(child: MessageList()),
    Center(child: UpdatesPage()),
    Center(child: GroupPage()),
    Center(child: CallPage())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(
          "Whatsapp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded, color: Colors.white),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred message")),
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("Switch accounts")),
              ];
            },
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: pages[selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: AppColor.primaryColor,
        currentIndex: selectedIndex,
        showUnselectedLabels: true,

        onTap: (index) {
          setState(() {
            selectedIndex = index; // Update selected index
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_sharp),
            label: 'Updates',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),

    );
  }
}
//More comment
//Another comment
//Some comment
