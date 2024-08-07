import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Setting',
        ),
        backgroundColor: Colors.blue.shade500,
      ),
      body: const Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}