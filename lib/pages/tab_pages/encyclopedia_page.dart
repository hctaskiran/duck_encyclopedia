import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';

class EncyclopediaPage extends StatelessWidget {
  const EncyclopediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: pinkColor,
      body: Center(
        child: Text('This is Encyclopedia Tab, index 1'),
      ),
    );
  }
}