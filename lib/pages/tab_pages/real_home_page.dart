import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_languages.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:frontend_tutorial/utilities/pages_list.dart';
import 'package:frontend_tutorial/utilities/faq.dart';

class REALHomePage extends StatelessWidget {
  const REALHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('dd MMMM yyyy').format(currentDate);

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
                      Text(formattedDate, style: const TextStyle(color: grey200color))
                    ],
                  ),
                  // icon
                  Container(
                      decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: DropdownButton(
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
                        },
                        icon: const Icon(
                          Icons.language_rounded,
                          color: whiteColor,
                        ),
                      )),
                ],
              ),

              h20box,

              // search bar
              // Container(
              //   decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(15)),
              //   padding: const EdgeInsets.all(12),
              //   child: const Row(
              //     children: [
              //       Icon(
              //         Icons.search_outlined,
              //         color: whiteColor,
              //       ),
              //       w5box,
              //       Text(searchText, style: TextStyle(color: whiteColor))
              //     ],
              //   ),
              // ),

              h20box,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(LocaleKeys.aboutApp.tr(),
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18))),
                ],
              ),

              h20box,

              //   _emojiIcons(),
            ],
          ),
        ),

        //    h20box,

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
                  // exercise heading
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

                  // exercise listview
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => pages[5]));
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
