import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/text_theme_constants.dart';
import 'package:frontend_tutorial/pages/page_organizer.dart';
import 'constants/app_bar_constants.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
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
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(grey400color),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 70, vertical: 10)
            ),
          )
        ),
        textTheme: TextTheme(
          titleSmall: CustomTextStyles().titleSmall(),
          bodySmall: CustomTextStyles().bodySmall()
        ),
        appBarTheme: _customAppBar(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const PageOrganizer(),
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




