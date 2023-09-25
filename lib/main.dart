import 'package:duck_encyclopedia/constants/app_bar_constants.dart';
import 'package:duck_encyclopedia/constants/app_languages.dart';
import 'package:duck_encyclopedia/constants/colors.dart';
import 'package:duck_encyclopedia/constants/text_theme_constants.dart';
import 'package:duck_encyclopedia/init/app_cache.dart';
import 'package:duck_encyclopedia/pages/tab_pages/page_organizer.dart';
import 'package:duck_encyclopedia/settings/app_settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  await AppCache.instance.setup();
  await EasyLocalization.ensureInitialized();
  runApp(ChangeNotifierProvider(
    create:(context) => AppSettings(),
    child: EasyLocalization(
      supportedLocales: AppLanguages.supportedLanguages,
      path: AppLanguages.LANG_PATH,
      child: const MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

bool useM3 = true;
bool dbgf = false;

@override
  @override
  Widget build(BuildContext context) {
  Provider.of<AppSettings>(context,listen: false).loadGifSetting();
    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: ThemeData(
        drawerTheme: _customDrawerTheme(),
        textButtonTheme: _customTextButtonTheme(),
        bottomNavigationBarTheme: _customBNBtheme(),
        textTheme: _customTextTheme(),
        appBarTheme: _customAppBar(),
        useMaterial3: useM3,
      ),
      debugShowCheckedModeBanner: dbgf,
      home: const PageOrganizer(),
    );
  }

// drawer
DrawerThemeData _customDrawerTheme() {
  return const DrawerThemeData(
        backgroundColor: pinkColor,
        shadowColor: whiteColor
      );
}

// bottom navigation bar
BottomNavigationBarThemeData _customBNBtheme() {
  return const BottomNavigationBarThemeData(
        backgroundColor: grey200color,
        selectedIconTheme: IconThemeData(color: pinkColor),
        unselectedIconTheme: IconThemeData(color: grey600color)
      );
}

// text theme
TextTheme _customTextTheme() {
  return TextTheme(
        titleSmall: CustomTextStyles().titleSmall(),
        bodySmall: CustomTextStyles().bodySmall()
      );
}

// text button theme
TextButtonThemeData _customTextButtonTheme() {
  return TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 20)))
      );
}

// app bar theme
AppBarTheme _customAppBar() {
    return  const AppBarTheme(
      iconTheme: IconThemeData(color: whiteColor),
        centerTitle: true,
        // shape: abShape,
        backgroundColor: abPinkColor,
        elevation: abElevation,
      );
  }
}




