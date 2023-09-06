import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:frontend_tutorial/settings/app_settings.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<AppSettings>(context, listen: false).loadGifSetting();
    return Drawer(
        backgroundColor: pinkColor,
        child: Column(
          children: [
            Image.asset('assets/img/duck.png'),
            h20box,
            h20box,
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _drawerText(
                  text: LocaleKeys.bottomNavigationBar_settingsPage_special.tr(),
                ),
              ],
            ),
          ],
        ));
  }
}

class _drawerText extends StatelessWidget {
  const _drawerText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
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
      },
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 24),
      ),
    );
  }
}
