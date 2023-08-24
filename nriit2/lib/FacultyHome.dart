import 'package:flutter/material.dart';
import 'faculty_edit_attendance.dart';
import 'faculty_post_attendance.dart';

class FacultyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty Home'),
        backgroundColor: Color(0xFFFF3A5A),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 30, bottom: 0),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.school_rounded,
                  color: Colors.red,
                  size: 60,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Faculty',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Color(0xFFFF3A5A),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FacultyPostAttendance(),
                      ),
                    );
                  },
                  child: Text(
                    'Faculty Post Attendance',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Color(0xFFFF3A5A),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FacultyEditAttendance(),
                      ),
                    );
                  },
                  child: Text(
                    'Faculty Edit Attendance ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}