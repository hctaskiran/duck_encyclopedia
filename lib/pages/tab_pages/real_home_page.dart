// ignore_for_file: deprecated_member_use
import 'dart:io';
import 'package:duck_encyclopedia/constants/app_languages.dart';
import 'package:duck_encyclopedia/constants/axis_aligments.dart';
import 'package:duck_encyclopedia/constants/colors.dart';
import 'package:duck_encyclopedia/constants/paddings.dart';
import 'package:duck_encyclopedia/constants/sized_boxes.dart';
import 'package:duck_encyclopedia/pages/tab_pages/page_organizer.dart';
import 'package:duck_encyclopedia/utilities/custom_buttons/home_page_buttons.dart';
import 'package:duck_encyclopedia/utilities/localizated_texts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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

const String realDate = "dd.MM.yyyy" " |";

class _REALHomePageState extends State<REALHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: horizontal20,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: mainSPB,
                children: [
                  Column(
                    crossAxisAlignment: crossST,
                    children: [
                      h20box,
                      Text(LocalizatedTexts().appHiText, style: Theme.of(context).textTheme.titleSmall),
                      h5box,
                      Text(
                        DateFormat(realDate).add_Hm().format(DateTime.now()), // Format the current date and time
                        style: const TextStyle(color: grey200color),
                      )
                    ],
                  ),
                  // icon
                  Container(
                      decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton(
                        padding: all5,
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
                mainAxisAlignment: mainSPB,
                children: [
                  Expanded(
                      child: Text(LocalizatedTexts().appQuoteText,
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
            padding: all25,
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: mainSPB,
                    children: [
                      Text(
                        LocalizatedTexts().appAboutTitle,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  h20box,
                  Expanded(
                    child: ListView(
                      children: const [
                        AppGoalButton(),
                        ExistButton(),
                        InspirationButton(),
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

