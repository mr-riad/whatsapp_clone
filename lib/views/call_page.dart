import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CallPage extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<CallPage> {
  List<Map<String, dynamic>> messages = [
    {
      'name': 'Riad (5)',
      'profile_picture': 'assets/images/profile1.jpg',
      'last_message': '10 minutes ago',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },

    {
      'name': 'Sozol (2)',
      'profile_picture': 'assets/images/profile4.jpg',
      'last_message': 'Today, 8;19 PM',
      'unread': 0,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Ashik (5)',
      'profile_picture': 'assets/images/profile5.jpg',
      'last_message': 'Today, 6;10 PM',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'Badhon',
      'profile_picture': 'assets/images/profile6.jpg',
      'last_message': 'Today, 5;30 PM',
      'unread': 0,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Nafij (5)',
      'profile_picture': 'assets/images/profile2.jpg',
      'last_message': 'Yesterday, 11:04 PM',
      'unread': 0,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Fi-Amanillah Bitu',
      'profile_picture': 'assets/images/profile3.jpg',
      'last_message': 'Yesterday, 10:04 PM',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'Sozol',
      'profile_picture': 'assets/images/profile4.jpg',
      'last_message': 'Yesterday, 08:04 AM',
      'unread': 0,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Ashik',
      'profile_picture': 'assets/images/profile5.jpg',
      'last_message': 'Yesterday, 08:02 AM',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    {
      'name': 'Badhon',
      'profile_picture': 'assets/images/profile6.jpg',
      'last_message': 'Yesterday, 08:00 AM',
      'unread': 0,
      'last_msg_time': '10:30 AM',
    },
    {
      'name': 'Hasib',
      'profile_picture': 'assets/images/profile7.jpg',
      'last_message': 'Yesterday, 07:40 AM',
      'unread': 2,
      'last_msg_time': '10:00 AM',
    },
    // Additional unique messages can go here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundColor: AppColor.primaryColor,
              child: Icon(Icons.favorite,color: Colors.white)),
        ),
        title: Text('Favourite'),
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
                  // Text(
                  //   message['last_msg_time'],
                  //   style: TextStyle(fontSize: 12, color: Colors.grey),
                  // ),
                  // if (message['unread'] > 0)
                  //   Container(
                  //     margin: const EdgeInsets.only(top: 4),
                  //     padding: const EdgeInsets.all(5),
                  //     decoration: BoxDecoration(
                  //       color: AppColor.primaryColor,
                  //       borderRadius: BorderRadius.circular(50),
                  //     ),
                  //     child: Text(
                  //       message['unread'].toString(),
                  //       style: TextStyle(color: Colors.white, fontSize: 12),
                  //     ),
                  //   ),
                  
                  Icon(Icons.call)
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        onPressed: () {},
        child: Icon(Icons.call,color: Colors.white,),),
    );
  }
}
