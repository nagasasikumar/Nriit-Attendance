import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace these dummy values with your actual attendance data.
    Map<String, double> attendanceData = {
      'Present': 75.0,
      'Absent': 25.0,
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Roll Number',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Select Month',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Select Month',
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.date_range,
                    color: Colors.red,
                  ),
                ),
                // Add date selection logic here.
              ),
            ),
            SizedBox(height: 50.0),
            Center(
              child: DataTable(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // You can change the border color here.
                  ),
                ),
                columns: [
                  DataColumn(
                    label: Text('Roll No'),
                    tooltip: 'Roll Number',
                  ),
                  DataColumn(
                    label: Text('N-Present,  N-Absent'),
                    tooltip: 'Hours',
                  ),
                  DataColumn(
                    label: Text('AVG'),
                    tooltip: 'Total Hours',
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      DataCell(
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      DataCell(
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: PieChart(
                dataMap: attendanceData,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 3,
                initialAngleInDegree: 0,
                chartType: ChartType.disc,
                ringStrokeWidth: 32,
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}