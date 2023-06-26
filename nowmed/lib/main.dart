import 'package:flutter/material.dart';
import 'package:nowmed/views/schedule_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NowMed',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromRGBO(47, 50, 81, 1),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const ScheduleView(),
    );
  }
}
