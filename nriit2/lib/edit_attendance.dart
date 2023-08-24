import 'package:flutter/material.dart';

class EditAttendance extends StatefulWidget {
  @override
  _EditAttendanceState createState() => _EditAttendanceState();
}

class _EditAttendanceState extends State<EditAttendance> {
  List<String> rollNumbers = ['01', '02', '03']; // Replace with your roll numbers
  String selectedSubject = 'JAVA'; // Default selected subject
  int selectedHour = 1; // Default selected hour
  DateTime? selectedDate = DateTime.now(); // Default selected date (nullable)
  Map<String, Map<String, bool>> attendanceData = {};

  @override
  void initState() {
    super.initState();
    // Initialize attendanceData with P selected by default for each roll number
    for (String rollNumber in rollNumbers) {
      attendanceData[rollNumber] = {'P': true, 'A': false};
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(), // Use the selectedDate or default to now
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.red, // Change the date picker's primary color to red
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty Post Attendance 2'),
        backgroundColor: Color(0xFFFF3A5A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Row(
              children: [
                Text(
                  'Date: ',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red), // Red color
                ),
                TextButton(
                  onPressed: () => _selectDate(context),
                  child: Text(
                    '${selectedDate?.toLocal()}'.split(' ')[0], // Display selected date or an empty string
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red), // Red color
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<int>(
              value: selectedHour,
              onChanged: (value) {
                setState(() {
                  selectedHour = value ?? 1; // Provide a default value if value is null
                });
              },
              items: List.generate(8, (index) {
                return DropdownMenuItem<int>(
                  value: index + 1,
                  child: Text('Hour ${index + 1}'),
                );
              }),
              decoration: InputDecoration(labelText: 'Select Hour'),
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<String?>(
              value: selectedSubject,
              onChanged: (String? value) {
                setState(() {
                  selectedSubject = value ?? 'JAVA'; // Provide a default value if value is null
                });
              },
              items: [
                'JAVA',
                'DBMS',
                'DWM',
                'MFCS',
                'C',
                'FDS',
              ].map<DropdownMenuItem<String?>>((String value) {
                return DropdownMenuItem<String?>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(labelText: 'Select Subject'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Roll No',
              style: TextStyle(fontSize: 18.0, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: rollNumbers.length,
                itemBuilder: (context, index) {
                  String rollNumber = rollNumbers[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(rollNumber),
                      Row(
                        children: [
                          Text('P'), // Red color
                          Radio(
                            value: true,
                            groupValue: attendanceData[rollNumber]!['P'],
                            onChanged: (bool? value) {
                              setState(() {
                                attendanceData[rollNumber]!['P'] = value!;
                                attendanceData[rollNumber]!['A'] = !value;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('A'), // Red color
                          Radio(
                            value: true,
                            groupValue: attendanceData[rollNumber]!['A'],
                            onChanged: (bool? value) {
                              setState(() {
                                attendanceData[rollNumber]!['A'] = value!;
                                attendanceData[rollNumber]!['P'] = !value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
