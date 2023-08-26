import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import '../pages/home_button.dart';

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
          const Text('ördek'),
          h20box,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeButtonPage()));
              },
              child: Row(
                children: [
                  const Icon(Icons.arrow_forward_ios, size: 30,),
                  Text('H O M E', style: Theme.of(context).textTheme.titleSmall,)
                ],
              )
            ),
          ),
        ],
      )
    );
  }
}
