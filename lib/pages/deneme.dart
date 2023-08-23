import 'package:flutter/material.dart';

class denemePage extends StatelessWidget {
  const denemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneme 1 Page'),
      ),
      body: const Center(
        child: Text('This Is Page 1, index 0')),
    );
  }
}