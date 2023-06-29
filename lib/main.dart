import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const UdharApp());
}

class UdharApp extends StatelessWidget {
  const UdharApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Udhar',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
