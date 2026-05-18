import 'package:flutter/material.dart';
class FList extends StatelessWidget {
  const FList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('List No $index'),
              subtitle: Text('$index er Subtitle'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete_forever, color: Colors.red,),
            ),
          );
        },
      ),
    );
  }
}
