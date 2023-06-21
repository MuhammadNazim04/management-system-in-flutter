
import 'package:flutter/material.dart';
import 'package:my_project_name/ProfilePage.dart';
//import 'CourseDirectoryPage.dart';
import 'DashboardPage.dart';
import 'LoginPage.dart';
import 'MyTasksPage.dart';
import 'SignupPage.dart';
import 'StudentDirectoryPage.dart';
import 'StudentProfilePage.dart';
import 'TeacherDirectoryPage.dart';
import 'TeacherProfilePage.dart';
import 'TranscriptPage.dart';
import 'WriteApplicationPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/profile': (context) =>  const ProfilePage(),
        '/dashboard': (context) =>    const DashboardPage(),
        '/studentDirectory': (context) =>   const StudentDirectoryPage(),
        '/studentProfile': (context) =>   const StudentProfilePage(name: '',),
        '/teacherDirectory': (context) =>  const TeacherDirectoryPage(),
        '/teacherProfile': (context) =>  const TeacherProfilePage(name: '',),
        '/writeApplication': (context) =>  const WriteApplicationPage(),
       // '/courseDirectory': (context) =>  CourseDirectoryPage(),
       // '/courseDetail': (context) =>      const CourseDetailPage(courseName: '', courseCode: '', instructor: '', students: [],),
        '/transcript': (context) =>   const TranscriptPage(),
        '/tasks': (context) =>   const MyTaskPage(),
      },
    );
  }
}


