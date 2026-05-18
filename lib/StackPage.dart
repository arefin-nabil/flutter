import 'package:flutter/material.dart';
class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [









            Stack(
              children: [
                Container(
                  color: Colors.red, // behind red
                  height: 200,
                  width: 200,
                ),
                Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                  top: 10,
                  child: Container(
                    color: Colors.green,  // middle green
                    height: 150,
                    width: 180,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  bottom: 20,
                  child: Container(
                    color: Colors.purple,  // top purple
                    height: 100,
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),


            //-----------------------------------------------
            // profile pic active or not by stack


            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://ifatwa.info/?qa=image&qa_blobid=822355028289709359&qa_size=200"),
                  radius: 80,
                ),
                Positioned(
                  bottom: 10,
                  right: 5,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2)),
                  ),
                ),
              ],
            ),

          ],
        )

      ),
    );
  }
}
