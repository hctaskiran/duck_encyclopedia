import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';

class HomeButtonPage extends StatelessWidget {
  const HomeButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: pinkColor,
      body: const Center(child: Text('This is Home (Button) Page, index 5')),
    );
  }
}
