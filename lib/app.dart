import 'package:f_class1/buttons.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'text_input.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'Class - 1',
      home: input_txt(),
    );
  }
}
