import 'package:flutter/material.dart';
import 'Home/home_screen.dart';
import 'features/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}