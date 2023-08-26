import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_bar_constants.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/utilities/drawer.dart';
import '../utilities/pages_list.dart';

class PageOrganizer extends StatefulWidget {
  const PageOrganizer({super.key});

  @override
  State<PageOrganizer> createState() => _PageOrganizerState();
}

class _PageOrganizerState extends State<PageOrganizer> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: pinkColor,
      
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: grey200color,
      items: const [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home)),    
      BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_rounded), label: 'Encyclopedia'),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings), label: 'Settings'),
    ],
    onTap: (index) {
      setState(() {
        activeIndex = index;
      });
    },
    ),
      appBar: AppBar(
        titleTextStyle: abttStyle,
        title: Text(abTitle, style: abStyle),
      ),
      body: pages[activeIndex],
    );
  }
/*
  Row _emojiIcons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '😄',
              emojiText: 'Cheerful',
            ),
            h5box,
          ],
        ),
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '💞',
              emojiText: 'Lovely',
            ),
            h5box,
          ],
        ),
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '😎',
              emojiText: 'Emo',
            ),
            h5box,
          ],
        ),
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '😡',
              emojiText: 'Angry',
            ),
            h5box,
          ],
        ),
      ],
    );
  }
  */
}

