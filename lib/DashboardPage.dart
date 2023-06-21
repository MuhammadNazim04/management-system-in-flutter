import 'package:flutter/material.dart';

class AppRoutes {
  static const String dashboard = '/dashboard';
  static const String studentDirectory = '/studentDirectory';
  static const String teacherDirectory = '/teacherDirectory';
  static const String writeApplication = '/writeApplication';
  static const String courseDirectory = '/courseDirectory';
  static const String transcript = '/transcript';
  static const String tasks = '/tasks';
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      DashboardContainer(
                        title: 'Student Directory',
                        gradientColors: [
                          Colors.orange,
                          Colors.deepOrange,
                        ],
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.studentDirectory);
                        },
                      ),
                      DashboardContainer(
                        title: 'Teacher Directory',
                        gradientColors: [
                          Colors.green,
                          Colors.lightGreen,
                        ],
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.teacherDirectory);
                        },
                      ),
                      DashboardContainer(
                        title: 'Write Application',
                        gradientColors: [
                          Colors.red,
                          Colors.deepPurple,
                        ],
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.writeApplication);
                        },
                      ),
                      DashboardContainer(
                        title: 'Course Directory',
                        gradientColors: [
                          Colors.teal,
                          Colors.lightBlue,
                        ],
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.courseDirectory);
                        },
                      ),
                      DashboardContainer(
                        title: 'Transcript',
                        gradientColors: [
                          Colors.pink,
                          Colors.purple,
                        ],
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.transcript);
                        },
                      ),
                      DashboardContainer(
                        title: 'My Tasks',
                        gradientColors: [
                          Colors.amber,
                          Colors.yellow,
                        ],
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.tasks);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          if (index == 0) {
            Navigator.pop(context); // Handle back navigation
          } else if (index == 1) {
            Navigator.pushNamed(context, '/dashboard'); // Handle home navigation
          } else if (index == 2) {
            _showSettingsOptions(context); // Show settings options
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Back',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _showSettingsOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  // Handle profile option
                  Navigator.pushNamed(context, '/profile'); // Close the bottom sheet
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Handle logout option
                  Navigator.pushNamed(context, '/login'); // Close the bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class DashboardContainer extends StatelessWidget {
  final String title;
  final List<Color> gradientColors;
  final VoidCallback onTap;

  const DashboardContainer({
    required this.title,
    required this.gradientColors,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: gradientColors,
          ),
          borderRadius: BorderRadius.circular(80),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
