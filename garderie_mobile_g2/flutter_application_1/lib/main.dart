import 'package:flutter/material.dart';

void main() {
  runApp(const MaGarderieApp());
}


class MaGarderieApp extends StatelessWidget {
  const MaGarderieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma Garderie',          
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange, 
      ),
      home: const Scaffold(
        body: Center(child: Text('Ma Garderie')),
      ),
    );
  }
}