import 'package:final_exam_650710153/answer2.dart';
import 'package:flutter/material.dart';
import 'answer1.dart';
import 'answer2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'คำนวณค่าจัดส่ง',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('คำนวณค่าจัดส่ง')),
        body: RegistrationForm(),
      ),
    );
  }
}
