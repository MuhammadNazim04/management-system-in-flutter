import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when back button is pressed
          },
        ),
        title: Text('Profile'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/profile_picture.jpg'), // Replace with your own image path
            ),
            SizedBox(height: 20),
            Text(
              'Muhammad Nazim',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              onTap: () {
                // Handle account tap
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat'),
              onTap: () {
                // Handle chat tap
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              onTap: () {
                // Handle notification tap
              },
            ),
            ListTile(
              leading: Icon(Icons.data_usage),
              title: Text('Data and Storage Usage'),
              onTap: () {
                // Handle data and storage usage tap
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                // Handle help tap
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Invite a Friend'),
              onTap: () {
                // Handle invite a friend tap
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
