import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test01'),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('testProgram'),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.thumb_up), onPressed: () => {}),
      ),
    );
  }
}
