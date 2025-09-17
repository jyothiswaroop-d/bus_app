import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Back!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Track your bus and stay updated'),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 16),
            
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.red),
                        SizedBox(width: 8),
                        Text('Live Bus Location', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    
                    SizedBox(height: 16),
                    
                    Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_bus, size: 40, color: Colors.blue),
                          Text('GPS Integration Coming Soon'),
                          Text('Current Location: School Route'),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 16),
                    
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.check_circle, color: Colors.green),
                              Text('Bus Status'),
                              Text('On Route', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.access_time, color: Colors.orange),
                              Text('ETA'),
                              Text('15 mins', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}