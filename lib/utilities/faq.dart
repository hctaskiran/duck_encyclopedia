// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:duck_encyclopedia/constants/paddings.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/sized_boxes.dart';

class CustomFAQ extends StatelessWidget {
  const CustomFAQ(
      {super.key, required this.icon, required this.questions, required this.subQuestion, required this.color});
  final icon;
  final String questions;
  final String subQuestion;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: only12Bot,
      child: Container(
          padding: all16,
          decoration: _boxDec(),
          child: Row(
            children: [
              _container(),
              w12box,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _questions(context),
                    _subquestion(context),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  BoxDecoration _boxDec() => BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(16));

  Container _container() {
    return Container(
        padding: all10,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
        child: Icon(
          icon,
          size: 30,
          color: grey200color,
        ));
  }

  Text _subquestion(BuildContext context) {
    return Text(subQuestion,
        maxLines: 4, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12, color: grey400color));
  }

  AutoSizeText _questions(BuildContext context) {
    return AutoSizeText(questions,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16, color: blackColor));
  }
}
