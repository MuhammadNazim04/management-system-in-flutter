import 'package:flutter/material.dart';

class TranscriptPage extends StatelessWidget {
  const TranscriptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transcript'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.teal,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TranscriptContainer(
                  title: 'Flutter',
                  grade: 'A',
                  creditHours: 3,
                  courseCode: 'CSE101',
                ),
                TranscriptContainer(
                  title: 'Java',
                  grade: 'B+',
                  creditHours: 4,
                  courseCode: 'MTH202',
                ),
                TranscriptContainer(
                  title: 'React Native',
                  grade: 'A-',
                  creditHours: 3,
                  courseCode: 'PHY301',
                ),
                TranscriptContainer(
                  title: 'SQA',
                  grade: 'B',
                  creditHours: 3,
                  courseCode: 'ENG201',
                ),
                TranscriptContainer(
                  title: 'Mean and Mern',
                  grade: 'A+',
                  creditHours: 4,
                  courseCode: 'ECO101',
                ),
                SizedBox(height: 20),
                TranscriptCGPA(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TranscriptContainer extends StatelessWidget {
  final String title;
  final String grade;
  final int creditHours;
  final String courseCode;

  const TranscriptContainer({
    required this.title,
    required this.grade,
    required this.creditHours,
    required this.courseCode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Grade: $grade',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Credit Hours: $creditHours',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Course Code: $courseCode',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class TranscriptCGPA extends StatelessWidget {
  const TranscriptCGPA({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate CGPA based on grades
    double cgpa = 3.7; // Replace with your CGPA calculation logic

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CGPA',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            cgpa.toStringAsFixed(2),
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
