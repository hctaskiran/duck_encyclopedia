import 'package:flutter/material.dart';

class deneme3Page extends StatelessWidget {
  const deneme3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneme 3 Page'),
      ),
      body: const Center(
        child: Text('This Is Page 3, index 2')),
    );
  }
}