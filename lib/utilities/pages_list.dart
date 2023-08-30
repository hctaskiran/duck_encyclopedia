import 'package:flutter/material.dart';
import 'package:frontend_tutorial/pages/tab_pages/encyclopedia_page.dart';
import 'package:frontend_tutorial/pages/vehicles/cars.dart';
import '../pages/home_button.dart';
import '../pages/tab_pages/real_home_page.dart';
import '../pages/tab_pages/settings.dart';
import '../pages/vehicles/trains.dart';
import '../pages/vehicles/trucks.dart';

final List<Widget> pages = [
  const REALHomePage(),
  const EncyclopediaPage(),
  const SettingsPage(),
  const CarsPage(),
  const TrucksPage(),
  const TrainsPage(),
  const HomeButtonPage(),
];

final List<IconData> bnbicons = [
    Icons.home_outlined,
    Icons.book_outlined,
    Icons.settings_suggest_outlined,
    Icons.home,
    Icons.book,
    Icons.settings_suggest_rounded,
  ];
