import 'package:flutter/material.dart';
import 'package:sodateru_kakeibo/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "育てる家計簿",
      home: SplashScreen(),
    );
  }
}
