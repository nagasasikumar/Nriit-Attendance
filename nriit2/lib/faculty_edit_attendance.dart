import 'package:flutter/material.dart';
import 'edit_attendance.dart';

void main() {
  runApp(MaterialApp(
    home: FacultyEditAttendance(),
  ));
}

class FacultyEditAttendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty Post Attendance'),
        backgroundColor: Color(0xFFFF3A5A),
      ),
      body: Container(
        color: Color.fromARGB(
            0, 161, 98, 98), // Set the background color for the body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 40.0), // Space between AppBar and buttons
            buildButton(
              text: 'Edit 20KP-DS Students',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAttendance(), // Navigate to PostAttendance
                  ),
                );
              },
            ),
            SizedBox(height: 20.0), // Space between buttons
            buildButton(
              text: 'Edit 20KP-IT Students',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAttendance(), // Navigate to PostAttendance
                  ),
                );
              },
            ),
              SizedBox(height: 20.0), // Space between buttons
            buildButton(
              text: 'Edit 21KP-DS Students',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAttendance(), // Navigate to PostAttendance
                  ),
                );
              },
            ),
              SizedBox(height: 20.0), // Space between buttons
            buildButton(
              text: 'Edit 21KP-IT Students',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAttendance(), // Navigate to PostAttendance
                  ),
                );
              },
            ),
              SizedBox(height: 20.0), // Space between buttons
            buildButton(
              text: 'Edit 22KP-DS Students',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAttendance(), // Navigate to PostAttendance
                  ),
                );
              },
            ),
              SizedBox(height: 20.0), // Space between buttons
            buildButton(
              text: 'Edit 22KP-IT Students',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAttendance(), // Navigate to PostAttendance
                  ),
                );
              },
            ),
            
            // Add more buttons for other student groups with similar navigation
          ],
        ),
      ),
    );
  }

  Widget buildButton({required String text, VoidCallback? onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Color(0xFFFF3A5A), // Set the background color for the button
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
