// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sized_boxes.dart';

class EmojiIcon extends StatefulWidget {
  final String emojiIcon;
  final String emojiText;
  const EmojiIcon({super.key, required this.emojiIcon, required this.emojiText});

  @override
  State<EmojiIcon> createState() => _EmojiIconState();
}

class _EmojiIconState extends State<EmojiIcon> {
  bool isSelected = false;

  void _isSelected() {
    isSelected = !isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Center(
                child: Text(
              widget.emojiIcon,
              style: TextStyle(fontSize: 30),
            )),
            Text(widget.emojiText, style: TextStyle(color: whiteColor))
          ],
        ));
  }
}
