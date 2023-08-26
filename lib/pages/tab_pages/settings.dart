import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: pinkColor,
      body: Center(
        child: Text('This is Settings Tab, index 2'),
      ),
    );
  }
}