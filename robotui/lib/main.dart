import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';
import 'features/dashboard/app_grid_screen.dart';

void main() {
  runApp(const FloorRobotApp());
}

class FloorRobotApp extends StatelessWidget {
  const FloorRobotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commercial Floor Robot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/app-grid': (context) => const AppGridScreen(),
      },
    );
  }
}