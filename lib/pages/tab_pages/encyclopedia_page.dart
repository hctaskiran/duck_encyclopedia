import 'package:flutter/material.dart';
import 'package:frontend_tutorial/components/cards/duck_card.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/text_theme_constants.dart';

import '../../utilities/pages_list.dart';

class EncyclopediaPage extends StatelessWidget {
  const EncyclopediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: pinkColor,
        body: Padding(
          padding: EdgeInsets.only(top: 15, left: 4),
          child: DuckCard(),
        ));
  }
}
