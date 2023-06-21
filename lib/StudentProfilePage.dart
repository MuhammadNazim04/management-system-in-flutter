
import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  final String name;

  const StudentProfilePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // Fetch the student profile data based on the provided name

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepOrange,
                Colors.blueAccent,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/profile_picture.jpg'),
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
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+92 311 6496 308'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('nazimhimaiti4@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Karachi, Pakistan'),
                ),
                SizedBox(height: 20),
                Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text('Flutter, Dart, Firebase, UI/UX Design'),
                SizedBox(height: 20),
                Text(
                  'Experience',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hands Pakistan\nAdministration Assistant\n2 Years',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'IQRA University\nBS(SE)\n2022',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
