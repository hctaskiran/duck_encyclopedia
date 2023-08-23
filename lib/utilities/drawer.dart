import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset(
            'assets/img/duck.png', 
            fit: BoxFit.fitWidth
          ),
          h20box,
          const Text('ördek')
        ],
      )
    );
  }
}
