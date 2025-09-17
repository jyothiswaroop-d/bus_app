import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _selectedUserType = 'Parent/Student';

  void _login() {
    if (_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DashboardPage(
            userType: _selectedUserType,
            username: _usernameController.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text('Bus Tracking System', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            
            DropdownButtonFormField<String>(
              value: _selectedUserType,
              decoration: InputDecoration(
                labelText: 'Login as',
                border: OutlineInputBorder(),
              ),
              items: ['Admin', 'Parent/Student'].map((value) => 
                DropdownMenuItem(value: value, child: Text(value))
              ).toList(),
              onChanged: (value) => setState(() => _selectedUserType = value!),
            ),
            
            SizedBox(height: 16),
            
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            
            SizedBox(height: 16),
            
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            
            SizedBox(height: 24),
            
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _login,
                child: Text('LOGIN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}