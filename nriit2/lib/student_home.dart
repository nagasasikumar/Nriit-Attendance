import 'package:flutter/material.dart';

import 'day_to_day.dart';
import 'monthly.dart';

class StudentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
        backgroundColor: Color(0xFFFF3A5A),
      ),
      body: Container(
        color: Color.fromARGB(
            0, 161, 98, 98), // Set the background color for the body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school_rounded,
                    color: Colors.red,
                    size: 60,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Student',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0), 
            Center(
              // Center the buttons
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color(
                            0xFFFF3A5A), // Set the background color for the button
                      ),
                      child: TextButton(
                       onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DayToDay()),
                    );
                  },
                        child: Text(
                          'Day-to-Day Attendance',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0), // Space between buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color(
                            0xFFFF3A5A), // Set the background color for the button
                      ),
                      child: TextButton(
                       onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                        child: Text(
                          'Monthly Attendance',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
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