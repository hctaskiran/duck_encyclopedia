import 'package:flutter/material.dart';

class deneme5page extends StatelessWidget {
  const deneme5page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: const Center(
        child: Text('This is Message page, index 5'),
      ),
    );
  }
}