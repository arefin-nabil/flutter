import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  final String phone;
  final String ? password;
  Dashboard({super.key, required this.phone, this.password});
  // required bcz we want data,, pervious page cant come ithout getting the data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(phone,style: TextStyle(
            fontSize: 50,
            color: Colors.blue
        ),),

      ),
    );
  }
}