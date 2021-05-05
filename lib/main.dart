import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AllWork',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Text('All work'),
    );
  }
}
