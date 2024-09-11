import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Show Data!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
