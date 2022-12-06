import 'package:flutter/material.dart';

void main() {
  runApp(const WeebsApp());
}

class WeebsApp extends StatelessWidget {
  const WeebsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Weebs App',
      home: Scaffold(),
    );
  }
}
