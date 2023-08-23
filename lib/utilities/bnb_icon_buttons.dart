// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/pages/deneme3.dart';
import 'package:frontend_tutorial/utilities/pages_list.dart';
import '../pages/deneme.dart';
import '../pages/deneme2.dart';

class BNBIconButtons extends StatefulWidget {
  const BNBIconButtons({super.key});

  @override
  State<BNBIconButtons> createState() => _BNBIconButtonsState();
}

class _BNBIconButtonsState extends State<BNBIconButtons> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: grey200color,
      items: [
      BottomNavigationBarItem(
        icon: IconButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => pages[5]));
          }, 
          icon: Icon(Icons.home)),
          label: 'Home'
        ),
      BottomNavigationBarItem(
        icon: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => pages[4]));
          }, 
          icon: Icon(Icons.message_rounded)),
          label: 'Message'
        ),
      BottomNavigationBarItem(
          icon: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => pages[3]));
              }),
          label: 'Settings')
    ]);
  }
}
