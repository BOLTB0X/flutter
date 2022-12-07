import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 시작
}

// 메인 페이지 셋팅
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 앱 디자인 넣기 --> 위젯 짜집기
    // return MaterialApp(home: Text('안녕'));
    // return MaterialApp(home: Icon.shop);
    // pubspec.yaml 에 이미지 등록 필수
    // return MaterialApp(home: Image.asset('assets/coco.jpg'));
    return MaterialApp(
        home: Center(
            child: Container(width: 50, height: 50, color: Colors.blue)));
  }
}
