import 'package:duck_encyclopedia/components/cards/duck_card.dart';
import 'package:duck_encyclopedia/constants/colors.dart';
import 'package:flutter/material.dart';

class EncyclopediaPage extends StatelessWidget {
  const EncyclopediaPage({super.key});
  final cardPadding = const EdgeInsets.only(top: 15, left: 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: pinkColor,
        body: Padding(
          padding: cardPadding,
          child: const DuckCard(),
        ));
  }
}
