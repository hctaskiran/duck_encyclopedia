import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_bar_constants.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/components/cards/drawer.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:frontend_tutorial/utilities/localizated_texts.dart';
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

  if (!dialogShown) {
    await showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text("duck map alert dialog title"),
          content: const Text("duck map alert dialog content"),
          actions: <Widget>[
            TextButton(onPressed: () {Navigator.of(context).pop();}, child: const Text("alofis"))
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
      appBar: AppBar(
        titleTextStyle: abttStyle,
        title: Text(abTitle, style: abStyle),
      ),
      body: pages[activeIndex],
      drawer: CustomDrawer(),
      backgroundColor: pinkColor,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: pinkColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(bnbicons[0]),
            activeIcon: Icon(bnbicons[1]), 
            label: LocalizatedTexts().realHomePage
          ),
          BottomNavigationBarItem(
            icon: Icon(bnbicons[2]),
            activeIcon: Icon(bnbicons[3]), 
            label: LocalizatedTexts().encyclopediaPage
          ),
          BottomNavigationBarItem(
            icon: Icon(bnbicons[4]), 
            activeIcon: Icon(bnbicons[5]),
            label: LocalizatedTexts().duckMap
          )
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
}
