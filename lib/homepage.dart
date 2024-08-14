import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Hello, World!',
              style: TextStyle(
                  fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 24),
            ),
            Container(
              height: 250,
              width: 200,
             decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/flutter.png'),fit: BoxFit.fill)
             ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Button Pressed!')),
                );
              },
              child: Text('Press Me'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
