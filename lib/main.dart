import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(const MaterialApp(
    home: JsonListViewScreen(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
