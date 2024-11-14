import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  List<Map<String, dynamic>> messages = [
    {
      'name': 'MR Riad',
      'profile_picture': 'assets/images/profile1.jpg',
      'last_message': 'This is Riad',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'Nafij',
      'profile_picture': 'assets/images/profile2.jpg',
      'last_message': 'Mess a asbi kokhon?',
      'unread': 1,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Fi-Amanillah Bitu',
      'profile_picture': 'assets/images/profile3.jpg',
      'last_message': 'Hello, how are you?',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'Sozol',
      'profile_picture': 'assets/images/profile4.jpg',
      'last_message': 'Vai ajke mill hoini',
      'unread': 0,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Ashik',
      'profile_picture': 'assets/images/profile5.jpg',
      'last_message': 'Ami Mirpur',
      'unread': 3,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'Badhon',
      'profile_picture': 'assets/images/profile6.jpg',
      'last_message': 'Varsity Jabi na?',
      'unread': 1,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Hasib',
      'profile_picture': 'assets/images/profile7.jpg',
      'last_message': 'Nafij er number ta de to',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    // Additional unique messages can go here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.archive_outlined),
        title: Text('Archived'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text("20",style: TextStyle(color: AppColor.primaryColor),),
          ),
        ],
      ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        onPressed: () {},
        child: Icon(Icons.message,color: Colors.white,),),
    );
  }
}
