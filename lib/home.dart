import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // data recieved here
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('This is row',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
              
                    ),
              
                  ),
                  Text('This is row',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
              
                    ),
              
                  ),
                  Text('This is row',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
              
                    ),
              
                  ),
                  Text('This is row',
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
              
                    ),
              
                  ),
              
                ],
              
              
              ),
            ),

            Text('This is home page text',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            /////// data shown here

            Text("Hello Mr. ${args['name'].toString()}"
                " Your phone No is: ${args['phone'].toString()}",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
      
    );
  }
}
