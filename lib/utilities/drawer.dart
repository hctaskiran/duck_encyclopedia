import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/settings/app_settings.dart';
import 'package:provider/provider.dart';
import '../pages/home_button.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
 Provider.of<AppSettings>(context,listen: false).loadGifSetting();
    return Drawer(
        child: Column(
      children: [
        Image.asset('assets/img/duck.png', fit: BoxFit.fitWidth),
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
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                  ),
                  Text(
                    'H O M E',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              )),
        ),
        const Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Switch(
                activeColor: pinkColor,
                value: Provider.of<AppSettings>(context).isGif,
                onChanged: (_) {
                 Provider.of<AppSettings>(context,listen: false).toggleGif();               
                }
              ),
            ),
          ],
        ),
      ],
    ));
  }
}