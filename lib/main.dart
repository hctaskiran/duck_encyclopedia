import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/text_theme_constants.dart';
import 'package:frontend_tutorial/pages/home_page.dart';
import 'constants/app_bar_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleSmall: CustomTextStyles().titleSmall(),
          bodySmall: CustomTextStyles().bodySmall()
        ),
        appBarTheme: _customAppBar(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

  AppBarTheme _customAppBar() {
    return AppBarTheme(
        centerTitle: true,
        shape: abShape,
        backgroundColor: abPinkColor,
        elevation: abElevation,
      );
  }
}




