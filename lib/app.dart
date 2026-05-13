import 'package:flutter/material.dart';
import 'form_validation.dart';
import 'home.dart';
import 'text_input.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'Class - 1',
      home: LoginPage(),
    );
  }
}
