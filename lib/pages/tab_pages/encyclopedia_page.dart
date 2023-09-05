import 'package:flutter/material.dart';
import 'package:frontend_tutorial/components/cards/duck_card.dart';
import 'package:frontend_tutorial/constants/colors.dart';

class EncyclopediaPage extends StatelessWidget {
  const EncyclopediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: pinkColor,
        body: Padding(
          padding: _CardPadding().cardPadding,
          child: const DuckCard(),
        ));
  }
}

class _CardPadding {
  final cardPadding = const EdgeInsets.only(top: 15, left: 4);
}
