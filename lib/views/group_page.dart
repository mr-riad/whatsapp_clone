import 'package:flutter/material.dart';

import '../utils/colors.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  List<Map<String, dynamic>> messages = [
    {
      'name': 'Friend Of Friend',
      'profile_picture': 'assets/images/g1.jpg',
      'last_message': 'Badhon: Kire Koi Tora?',
      'unread': 40,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'Pubg',
      'profile_picture': 'assets/images/g2.png',
      'last_message': 'Lizon: Clan er target purun korte hobe',
      'unread': 0,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Free Fire',
      'profile_picture': 'assets/images/g3.jpg',
      'last_message': 'Hasib: Kew Khelbi?',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'SEC Frnd',
      'profile_picture': 'assets/images/g4.jpeg',
      'last_message': 'Alamin: Meeting at 3 PM',
      'unread': 10,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Cr',
      'profile_picture': 'assets/images/g5.jpeg',
      'last_message': 'Abrar: Kal Exam ase',
      'unread': 5,
      'last_msg_time': '10:00 AM',
    },

    // Additional unique messages can go here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              // tileColor: Colors.green[50],
              leading: CircleAvatar(
                backgroundImage: AssetImage(message['profile_picture']),
              ),
              title: Text(
                message['name'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(message['last_message']),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    message['last_msg_time'],
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  if (message['unread'] > 0)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        message['unread'].toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
