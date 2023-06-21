import 'package:flutter/material.dart';

class WriteApplicationPage extends StatefulWidget {
  const WriteApplicationPage({Key? key}) : super(key: key);

  @override
  _WriteApplicationPageState createState() => _WriteApplicationPageState();
}

class _WriteApplicationPageState extends State<WriteApplicationPage> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  bool _isSubmitted = false;
  int _currentIndex = 0;

  @override
  void dispose() {
    _dateController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      setState(() {
        _dateController.text = selectedDate.toIso8601String().split('T')[0];
      });
    }
  }

  void _submitApplication() {
    if (_dateController.text.isEmpty ||
        _subjectController.text.isEmpty ||
        _messageController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Please fill all fields'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        _isSubmitted = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write Application'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Date:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: IgnorePointer(
                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Select Date',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Subject:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _subjectController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Subject',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Message:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _messageController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Message',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitApplication,
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  onPrimary: Colors.white,
                ),
                child: Text('Submit'),
              ),
              SizedBox(height: 20),
              if (_isSubmitted)
                Text(
                  'Your application is submitted.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
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
