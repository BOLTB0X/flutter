import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('앱임')),
            body: SizedBox(
                child: Text(
              '안녕하세요',
              style: TextStyle(fontWeight: FontWeight.w700),
            ))));
  }
}
