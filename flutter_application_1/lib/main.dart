import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(BusTrackingApp());
}

class BusTrackingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Tracking System',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}