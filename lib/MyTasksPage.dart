import 'package:flutter/material.dart';
import 'package:my_project_name/MarkSheet.dart';
import 'package:my_project_name/SearchBarScreen.dart';

class MyTaskPage extends StatelessWidget {
  const MyTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text('My Tasks'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard'); // Navigate back when back button is pressed
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.pink,
              Colors.deepPurple,
            ],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TaskItem(
              taskName: 'My Resume',
              icon: Icons.work,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Task1Screen(),
                  ),
                );
              },
            ),
            SizedBox(width: 16),
            TaskItem(
              taskName: 'SearchBar',
              icon: Icons.work,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchBarScreen(),
                  ),
                );
              },
            ),
            SizedBox(width: 16),
            TaskItem(
              taskName: 'Calculator',
              icon: Icons.work,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MarkSheet(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String taskName;
  final IconData icon;
  final VoidCallback onTap;

  const TaskItem({
    required this.taskName,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            taskName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class Task1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green,
            Colors.lightGreen,
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Task 1'),
        ),
        body: SingleChildScrollView(
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

