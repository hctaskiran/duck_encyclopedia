import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';

class TrainsPage extends StatelessWidget {
  const TrainsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: pinkColor,
      body: const Center(
        child: Text('This Is Trains Page, index 5')),
    );
  }
}