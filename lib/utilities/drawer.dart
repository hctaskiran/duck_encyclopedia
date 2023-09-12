import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:frontend_tutorial/settings/app_settings.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final centerMA = MainAxisAlignment.center;

  final _icons = [
    const Icon(Icons.question_mark_rounded, color: whiteColor),
    const Icon(Icons.person_2_rounded, color: whiteColor),
  ];

  @override
  Widget build(BuildContext context) {
    Provider.of<AppSettings>(context, listen: false).loadGifSetting();
    return Drawer(
        child: Column(
      children: [
        Image.asset('assets/img/duck.png'),
        h20box,
        h20box,
        InkWell(
          onTap: () {
            specialShowDialog(context);
          },
          child: Row(
            mainAxisAlignment: centerMA,
            children: [
              _icons[0],
              w12box,
              customTextButton(
                text: LocaleKeys.bottomNavigationBar_settingsPage_special.tr(),
              )
            ],
          ),
        ),
        h20box,
        h20box,
        InkWell(
          onTap: () {
            creditShowDialog(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _icons[1],
              w12box,
              customTextButton(
                text: LocaleKeys.bottomNavigationBar_settingsPage_credits.tr(),
              )
            ],
          ),
        )
      ],
    ));
  }

  Future<dynamic> creditShowDialog(BuildContext context) {
    return showDialog(
              context: context,
              builder: (_) => Column(
                    mainAxisAlignment: centerMA,
                    children: [
                      Column(
                        children: [
                          AlertDialog(
                            title: Text(LocaleKeys.bottomNavigationBar_settingsPage_whoText.tr()),
                            content: Text(LocaleKeys.bottomNavigationBar_settingsPage_whoSubText.tr()),
                          )
                        ],
                      )
                    ],
                  ));
  }

  Future<dynamic> specialShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AlertDialog(
                      title: Text(LocaleKeys.bottomNavigationBar_settingsPage_special.tr()),
                      content: Column(
                        children: [
                          Text(LocaleKeys.bottomNavigationBar_settingsPage_sureText.tr()),
                          Switch(
                              activeColor: blueColor,
                              value: Provider.of<AppSettings>(context).isGif,
                              onChanged: (_) {
                                Provider.of<AppSettings>(context, listen: false).toggleGif();
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ));
  }
}
class customTextButton extends StatelessWidget {

  customTextButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 24),
    );
  }
}
