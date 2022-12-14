import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('data')),
      body: Container(
        width: 50, height: 50,
        margin: EdgeInsets.all(20),
        // 개별 마진을 주고 싶으면 EdgeInsets.fromLTRB
        padding: EdgeInsets.all(30),
        // 테두리 주는 법
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        // 박스 정렬
      ),
    ));
  }
}
