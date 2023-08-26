import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cars'),),
      backgroundColor: pinkColor,
      body: const Text('This is Cars Page, index 3'),
    );
  }
}