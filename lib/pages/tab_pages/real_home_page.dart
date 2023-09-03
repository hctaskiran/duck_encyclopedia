// ignore_for_file: deprecated_member_use
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_languages.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:frontend_tutorial/utilities/pages_list.dart';
import 'package:frontend_tutorial/pages/page_organizer.dart';
import 'package:frontend_tutorial/utilities/faq.dart';

class REALHomePage extends StatefulWidget {
  const REALHomePage({
    super.key,
  });

  @override
  State<REALHomePage> createState() => _REALHomePageState();
}

void closeApp() {
  exit(0);
}

class _REALHomePageState extends State<REALHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      h20box,
                      Text(LocaleKeys.hiText.tr(), style: Theme.of(context).textTheme.titleSmall),
                      h5box,
                      Text(
                        DateFormat("dd.MM.yyyy" + " |").add_Hm().format(DateTime.now()), // Format the current date and time
                        style: TextStyle(color: grey200color),
                      )
                    ],
                  ),
                  // icon
                  Container(
                      decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton(
                        padding: const EdgeInsets.all(5),
                        isDense: true,
                        hint: const Icon(
                          Icons.language_rounded,
                          color: whiteColor,
                        ),
                        underline: const SizedBox(),
                        items: AppLanguages.Languages.asMap()
                            .map((index, value) => MapEntry(
                                index,
                                DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                )))
                            .values
                            .toList(),
                        onChanged: (newValue) {
                          int selectedIndex = AppLanguages.Languages.indexOf(newValue as String);
                          context.locale = AppLanguages.supportedLanguages[selectedIndex];
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => const PageOrganizer()));
                        },
                      )),
                ],
              ),
              h20box,
              h20box,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(LocaleKeys.aboutApp.tr(),
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18))),
                ],
              ),
              h20box
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              color: grey300color,
            ),
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.subAboutApp.tr(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  h20box,
                  Expanded(
                    child: ListView(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => pages[3]));
                          },
                          child: CustomFAQ(
                            icon: Icons.question_mark_rounded,
                            questions: LocaleKeys.appGoal.tr(),
                            subQuestion: LocaleKeys.subAppGoal.tr(),
                            color: greenColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => pages[4]));
                          },
                          child: CustomFAQ(
                            icon: Icons.fact_check_rounded,
                            questions: LocaleKeys.whyText.tr(),
                            subQuestion: LocaleKeys.subWhyText.tr(),
                            color: redColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (_) => Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/img/duck.png',
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  AlertDialog(
                                    title: Text(LocaleKeys.hereInspText.tr()),
                                    content: Text(LocaleKeys.inspirationDuck.tr()),
                                    actions: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                // Show a text for 3 seconds
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(
                                                    backgroundColor: red700color,
                                                    content: Text(LocaleKeys.thinkMessage.tr()),
                                                    duration: const Duration(seconds: 2),
                                                  ),
                                                );
                                                // Close the app after 3 seconds
                                                Future.delayed(const Duration(seconds: 2), () {
                                                  closeApp();
                                                });
                                              },
                                              child: Text(LocaleKeys.yesButton.tr())),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                // Show a text for 3 seconds
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(
                                                    backgroundColor: green700color,
                                                    content: Text(LocaleKeys.thankMessage.tr()),
                                                    duration: const Duration(seconds: 2),
                                                  ),
                                                );
                                              },
                                              child: Text(LocaleKeys.ofcButton.tr()))
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          child: CustomFAQ(
                            icon: Icons.admin_panel_settings_rounded,
                            questions: LocaleKeys.inspText.tr(),
                            subQuestion: LocaleKeys.subInspText.tr(),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
