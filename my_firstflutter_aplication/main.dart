import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Flutter App'), // Title bar with app name
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to my Flutter App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Spacing between the widgets
            ElevatedButton(
              onPressed: () {
                print('Done!'); // Prints a message to the console
              },
              child: Text('Click Here'),
            ),
            SizedBox(height: 20), // Spacing between the button and the image
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-2a111f7bff674447ed41c9b3149508d510fd50c24623da663ca19f489b7f18d6.png',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
