import 'package:duck_encyclopedia/constants/colors.dart';
import 'package:duck_encyclopedia/constants/sized_boxes.dart';
import 'package:duck_encyclopedia/settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utilities/custom_buttons/drawer_buttons.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final _icons = [
    const Icon(Icons.question_mark_rounded, color: whiteColor),
    const Icon(Icons.favorite, color: whiteColor),
    const Icon(Icons.person_2_rounded, color: whiteColor)
  ];

  @override
  Widget build(BuildContext context) {
    Provider.of<AppSettings>(context, listen: false).loadGifSetting();
    return Drawer(
        child: Column(
      children: [
        Image.asset('assets/img/duck.png'), h40box,
        DeveloperButton(icons: _icons), h40box,
        CreditButton(icons: _icons), h40box,
        SpecialButton(icons: _icons), 
      ],
    ));
  }
}