import 'package:flutter/material.dart';

class AttendanceRecord {
  final String date;
  final String status;
  final String boardingTime;
  final String dropTime;

  AttendanceRecord({
    required this.date,
    required this.status,
    required this.boardingTime,
    required this.dropTime,
  });
}

class AttendancePage extends StatelessWidget {
  final List<AttendanceRecord> attendanceData = [
    AttendanceRecord(date: '2024-01-15', status: 'Present', boardingTime: '08:15 AM', dropTime: '03:30 PM'),
    AttendanceRecord(date: '2024-01-14', status: 'Present', boardingTime: '08:12 AM', dropTime: '03:35 PM'),
    AttendanceRecord(date: '2024-01-13', status: 'Absent', boardingTime: '-', dropTime: '-'),
    AttendanceRecord(date: '2024-01-12', status: 'Present', boardingTime: '08:18 AM', dropTime: '03:28 PM'),
    AttendanceRecord(date: '2024-01-11', status: 'Present', boardingTime: '08:10 AM', dropTime: '03:32 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Attendance'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.green, size: 30),
                          Text('This Month'),
                          Text('18/20 Days', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('90%', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.date_range, color: Colors.blue, size: 30),
                          Text('This Week'),
                          Text('4/5 Days', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('80%', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20),
            
            Text('Recent Attendance', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            
            SizedBox(height: 16),
            
            Expanded(
              child: ListView.builder(
                itemCount: attendanceData.length,
                itemBuilder: (context, index) {
                  final record = attendanceData[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: record.status == 'Present' ? Colors.green : Colors.red,
                        child: Icon(
                          record.status == 'Present' ? Icons.check : Icons.close,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(record.date),
                      subtitle: Text(record.status),
                      trailing: record.status == 'Present'
                          ? Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('In: ${record.boardingTime}', style: TextStyle(fontSize: 12)),
                                Text('Out: ${record.dropTime}', style: TextStyle(fontSize: 12)),
                              ],
                            )
                          : null,
                    ),
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