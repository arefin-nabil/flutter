import 'package:flutter/material.dart';

import 'Dasboard.dart';
import 'Home2.dart';
import 'gridV.dart';
import 'home.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Image.asset(
            'asset/logo.png',
            height: 250,
            width: 250,
          ),
          Text('Login with phone and password'),
          SizedBox(
            height: 20,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('phone number dao'),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: 'Phone number dilam', border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter phone number';
                      } else if (value.length != 11) {
                        return 'Please enter correct number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password', border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      } else if (value.length <= 6) {
                        return 'Password must be at least 6 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) { //! mane force kora
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));

                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Home()));
                            }
                          },
                          child: Text('Submit'))),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) { //! mane force kora
                              Navigator.pushNamed(context, 'home', arguments: {
                                'phone':phoneController.text,
                                'pass': passwordController.text,
                                'name':'Nabil Boss'
                              });
                            }
                          },
                          child: Text('Send Data'))),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => GridV()));
                      },
                      child: Text('Home-2')),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Dashboard(phone: phoneController.text,)));
                      },
                      child: Text('Dashboard'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}