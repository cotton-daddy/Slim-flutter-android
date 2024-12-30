import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First Flutter App')),
        body: Center(
          child: Text('Hello, Flutter!'),
        ),
      ),
    ),
  );
}
