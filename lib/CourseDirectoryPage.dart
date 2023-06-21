// import 'package:flutter/material.dart';
//
// class CourseDirectoryPage extends StatelessWidget {
//    CourseDirectoryPage({Key? key}) : super(key: key);
//
//   // Replace this dummy course list with your actual course data
//   List<Map<String, dynamic>> courses = [
//     {
//       'courseName': 'Course 1',
//       'students': [
//         {
//           'name': 'John Doe',
//           'age': 20,
//           'email': 'john.doe@example.com',
//         },
//         {
//           'name': 'Jane Smith',
//           'age': 22,
//           'email': 'jane.smith@example.com',
//         },
//       ],
//     },
//     {
//       'courseName': 'Course 2',
//       'students': [
//         {
//           'name': 'Alice Johnson',
//           'age': 21,
//           'email': 'alice.johnson@example.com',
//         },
//         {
//           'name': 'Bob Williams',
//           'age': 23,
//           'email': 'bob.williams@example.com',
//         },
//       ],
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Course Directory'),
//       ),
//       body: ListView.builder(
//         itemCount: courses.length,
//         itemBuilder: (context, index) {
//           Map<String, dynamic> course = courses[index];
//           String courseName = course['courseName'];
//           List<Map<String, dynamic>> students = course['students'];
//
//           // return ListTile(
//           //   title: Text(courses[index]['courseName']),
//           //   onTap: () {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(
//           //         builder: (context) => CourseDetailPage(
//           //           courseName: courses[index]['courseName'],
//           //           courseCode: courses[index]['courseCode'],
//           //           instructor: courses[index]['instructor'],
//           //           students: courses[index]['students'],
//           //         ),
//           //       ),
//           //     );
//           //   },
//           // );
//         },
//       ),
//     );
//   }
// }
//
//
// class CourseDetailPage extends StatelessWidget {
//   final String courseName;
//   final String courseCode;
//   final String instructor;
//   final List<Map<String, dynamic>> students;
//
//   const CourseDetailPage({
//     required this.courseName,
//     required this.courseCode,
//     required this.instructor,
//     required this.students,
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Course Detail'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.blue,
//               Colors.indigo,
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Course Name: $courseName',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Course Code: $courseCode',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Instructor: $instructor',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Students:',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: students.length,
//                   itemBuilder: (context, index) {
//                     Map<String, dynamic> student = students[index];
//                     String studentName = student['name'];
//                     String studentId = student['id'];
//
//                     return ListTile(
//                       title: Text(
//                         studentName,
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       subtitle: Text(
//                         'ID: $studentId',
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       tileColor: Colors.transparent,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }