import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdybek uulu Syimyk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abdybekuulusyimyk Web'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Abdybek uulu Syimyk',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.teal,
            child: const Center(
              child: Text('Abdebek uulu Syimyk'),
            ),
          )
        ],
      ),
    );
  }
}
