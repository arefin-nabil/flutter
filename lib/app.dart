import 'package:flutter/material.dart';
import 'package:flutter_course/Theme/themes.dart';
import 'buttons.dart';
import 'f_list.dart';
import 'login.dart';
import 'gridV.dart';
import 'home.dart';
import 'text_input.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,


      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: Colors.green,
      //   scaffoldBackgroundColor: Colors.black,
      // ),
      title: 'Class - 1',
      home: LoginPage(),
      initialRoute: 'list',
      routes: {
        'login': (context)=> LoginPage(),
        'home': (context)=> Home(),
        'form':(context)=> input_txt(),
        'list': (context)=> FList(),
        'grid': (context)=> GridV(),

      },
    );
  }
}
