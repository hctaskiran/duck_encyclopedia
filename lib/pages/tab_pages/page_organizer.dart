// ignore_for_file: use_build_context_synchronously

import 'package:duck_encyclopedia/components/cards/drawer.dart';
import 'package:duck_encyclopedia/constants/app_bar_constants.dart';
import 'package:duck_encyclopedia/constants/colors.dart';
import 'package:duck_encyclopedia/utilities/localizated_texts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/pages_list.dart';

class PageOrganizer extends StatefulWidget {
  const PageOrganizer({super.key});

  @override
  State<PageOrganizer> createState() => _PageOrganizerState();
}

Future<void> showAlertDialogOnce(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool dialogShown = prefs.getBool('dialogShown') ?? false;

  if (dialogShown) {
    await showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text(LocalizatedTexts().duckMapAlertTitle),
          content: Text(LocalizatedTexts().duckMapAlertContent),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              }, 
              child: Text(LocalizatedTexts().duckMapAlertButton))
          ],
        );
      }
    );
    prefs.setBool('dialogShown', true);
  }

  }

class _PageOrganizerState extends State<PageOrganizer> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: pages[activeIndex],
      drawer: CustomDrawer(),
      backgroundColor: pinkColor,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: pinkColor,
        items: [
          bnbPages[0],
          bnbPages[1],
          bnbPages[2],
        ],
        currentIndex: activeIndex,
        onTap: (index) {
          if (index == 2) {
            showAlertDialogOnce(context);
          }
          setState(() {
            activeIndex = index;
          });
        },
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      titleTextStyle: abttStyle,
      title: Text(abTitle, style: abStyle),
    );
  }
}
