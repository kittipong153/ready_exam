import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // พื้นหลังสีอ่อน
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profile.jpg'), // เปลี่ยนเป็นรูปของคุณ
            ),
            SizedBox(height: 20),
            Text(
              'Kittipong Premjit', // ชื่อของคุณ
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'IT Student',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('getaengja@gmail.com'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text('061-2241837'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.location_on, color: Colors.red),
                title: Text('Nakhon Pathom, Thailand'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Contact Me',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
