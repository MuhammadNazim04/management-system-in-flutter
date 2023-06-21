import 'package:flutter/material.dart';
import 'TeacherProfilePage.dart';

class TeacherDirectoryPage extends StatelessWidget {
  const TeacherDirectoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard'); // Navigate back when back button is pressed
          },
        ),
        title: Text('Teacher Directory'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellowAccent,
              Colors.lightBlue,
            ],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TeacherContainer(
                      name: 'Naqi Hassan',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeacherProfilePage(name: 'Naqi Hassan')),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TeacherContainer(
                      name: 'Ahsan Malik',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeacherProfilePage(name: 'Ahsan Malik')),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TeacherContainer(
                      name: 'Teacher 3',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeacherProfilePage(name: 'Teacher 3')),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TeacherContainer(
                      name: 'Teacher 4',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeacherProfilePage(name: 'Teacher 4')),
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
