import 'package:flutter/material.dart';
import 'package:shca_test/scanner_widget.dart';
import 'package:shca_test/screens/username_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: UsernameScreen(),
    );
  }
}
