import 'package:flutter/material.dart';

class deneme2Page extends StatelessWidget {
  const deneme2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneme 2 Page'),
      ),
      body: const Center(
        child: Text('This Is Page 2, index 1')),
    );
  }
}