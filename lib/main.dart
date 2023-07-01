import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const UdharApp());
}

class UdharApp extends StatelessWidget {
  const UdharApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udhar',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFF5F5F5),
          fontFamily: "inter",
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFF5F5F5),
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
              iconTheme: IconThemeData(color: Colors.black, size: 24))),
      home: const Home(),
    );
  }
}
