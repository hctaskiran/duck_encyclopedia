import 'package:flutter/material.dart';

class deneme4page extends StatelessWidget {
  const deneme4page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('This is Settings page, index 4'),
      ),
    );
  }
}