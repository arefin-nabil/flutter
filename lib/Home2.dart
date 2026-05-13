import 'package:flutter/material.dart';
class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home 2'),
      ),
      
      body: Column(
        children: [
          Text('This home 2', style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),),
          
          
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back')),
          
        
          
        ],
      ),


    );
  }
}
