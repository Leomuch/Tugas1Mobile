import 'package:flutter/material.dart';
import 'package:tugas1/pages/home_app.dart';
import 'package:tugas1/pages/profile.dart';
import 'package:tugas1/pages/search_app.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeApp(),
        '/profile': (context) => const ProfileApp(),
        '/search': (context) => const SearchApp(),
      },
    );
  }
}

void main() {
  runApp(const MainApp());
}
