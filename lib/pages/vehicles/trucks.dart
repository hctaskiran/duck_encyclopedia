import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';

class TrucksPage extends StatelessWidget {
  const TrucksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: pinkColor,
      body: const Center(
        child: Text('This Is Trucks Page, index 4')),
    );
  }
}