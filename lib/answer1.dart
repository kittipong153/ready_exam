import 'package:flutter/material.dart';

class testanswer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png'), 
            ),
            SizedBox(height: 20),
            Text(
              'ชื่อผู้ใช้: John Doe',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'อีเมล: johndoe@example.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text("การตั้งค่า"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.blue),
              title: Text("เปลี่ยนรหัสผ่าน"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.question_mark_rounded, color: Colors.blue),
              title: Text("ความเป็นส่วนตัว"),
              onTap: () {},
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("แก้ไขโปรไฟล์")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text(
                'แก้ไขโปรไฟล์',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("ออกจากระบบ")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text(
                'ออกจากระบบ',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
