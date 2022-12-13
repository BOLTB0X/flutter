import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 상중하로 나눠주는 Scaffold() 위젯
        home: Scaffold(
      body: Row(
        // 여러위젯을 가로로 배치하는 법
        // 자동완성 -> ctr + space
        // crossAxisAlignment: 세로
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      ),
      // appBar: AppBar(), // 상단, () 안에 들어갈 위젯
      // body: Container(),
      // bottomNavigationBar: BottomAppBar(), // 하단
    ));
  }
}
