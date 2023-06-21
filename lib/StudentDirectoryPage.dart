import 'package:flutter/material.dart';
import 'StudentProfilePage.dart';

class StudentDirectoryPage extends StatelessWidget {
  const StudentDirectoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Directory'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.pinkAccent,
              Colors.blueAccent,
              Colors.deepOrange,
            ],
          ),
        ),
        padding: EdgeInsets.all(16), // Add padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Add space between rows
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: StudentContainer(
                      name: 'MUHAMMAD NAZIM',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudentProfilePage(name: 'Student 1')),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 16), // Add spacing between containers
                  Expanded(
                    child: StudentContainer(
                      name: 'BABAR ALI',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudentProfilePage(name: 'Student 2')),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16), // Add spacing between rows
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: StudentContainer(
                      name: 'FARAZ ALI',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudentProfilePage(name: 'Student 3')),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 16), // Add spacing between containers
                  Expanded(
                    child: StudentContainer(
                      name: 'WAQAR ALI',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudentProfilePage(name: 'Student 4')),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class StudentContainer extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const StudentContainer({
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.amber,
              Colors.lightGreen,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/profile_picture.jpg'),
                radius: 60,
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

