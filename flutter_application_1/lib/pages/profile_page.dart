import 'package:flutter/material.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  ProfilePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Text(username, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Student ID: ST001234'),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 16),
            
            Expanded(
              child: ListView(
                children: [
                  _buildDetailCard('Student Information', [
                    _buildDetailRow('Full Name', 'John Doe'),
                    _buildDetailRow('Class', '10th Grade'),
                    _buildDetailRow('Section', 'A'),
                    _buildDetailRow('Roll Number', '15'),
                  ]),
                  
                  _buildDetailCard('Contact Information', [
                    _buildDetailRow('Phone', '+91 9876543210'),
                    _buildDetailRow('Email', 'john.doe@school.edu'),
                    _buildDetailRow('Address', '123 Main Street, City'),
                  ]),
                  
                  _buildDetailCard('Bus Information', [
                    _buildDetailRow('Bus Number', 'BUS-001'),
                    _buildDetailRow('Route', 'Route A - Downtown'),
                    _buildDetailRow('Driver', 'Mr. Smith'),
                    _buildDetailRow('Driver Phone', '+91 9876543211'),
                  ]),
                ],
              ),
            ),
            
            SizedBox(height: 16),
            
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit Profile'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('Logout'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailCard(String title, List<Widget> children) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: TextStyle(color: Colors.grey[600])),
          ),
          Expanded(child: Text(value, style: TextStyle(fontWeight: FontWeight.w500))),
        ],
      ),
    );
  }
}