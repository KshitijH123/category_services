import 'package:category_services/get_api_call_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
           onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  CategoryScreen()),
            );
          },
          child: const Text(
            'Show Data!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
