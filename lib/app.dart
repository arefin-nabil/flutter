import 'package:flutter/material.dart';
import 'package:flutter_course/Theme/themes.dart';
import 'buttons.dart';
import 'form_validation.dart';
import 'gridV.dart';
import 'home.dart';
import 'text_input.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,


      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: Colors.green,
      //   scaffoldBackgroundColor: Colors.black,
      // ),
      title: 'Class - 1',
      home: LoginPage(),
    );
  }
}
