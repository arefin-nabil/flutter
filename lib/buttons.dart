
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buton Page'),
        backgroundColor: Colors.blueAccent,

      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton( // basic button
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ),
                onPressed: (){},
                child: Text('Submit')),
            SizedBox(height: 50,), // dui button er mjhe gap

            SizedBox(
              height: 50, 
              width: double.infinity, // full page er width nibe
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                  onPressed: (){},
                  child: Text('Submit')),
            ),
            SizedBox(height: 20,),
            SizedBox(height: 50,
              width: 300,
            child: OutlinedButton(
                onPressed: (){}, child: Text('Outline')),
            ),
            TextButton(
                onPressed: (){
                  print('Read more button clicked');
                }, child: Text('read more...')),
            SizedBox(height: 10,),
            Icon(Icons.phone_android, size: 50, color: Colors.red,),
            SizedBox(height: 10,),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_outlined, color: Colors.red, size: 50,)),
            SizedBox(height: 20,),
            
            GestureDetector(
              onTap: (){
                print('Single Tap');
              },
              onDoubleTap: (){
                print("tapped double");
              },
              onLongPress: (){
                print('Long pressed');
              },
              child: Text('this is child text button but it is not so big why???')

            ),
            SizedBox(height: 20,),

            InkWell(
              onTap: () {
                print('InkWell Single Tap');
              },
              onDoubleTap: () {
                print('InkWell Double Tap');
              },
              onLongPress: () {
                print('InkWell Long Press');
              },
              child: Text('Test-2',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.yellow,
          onPressed: (){
            print('Click on add');
          },
          child: Icon(Icons.add),
          ),

    );

  }
}
