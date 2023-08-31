import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:provider/provider.dart';

import '../../../../settings/app_settings.dart';

class SpecialSetting extends StatefulWidget {
  const SpecialSetting({super.key});

  @override
  State<SpecialSetting> createState() => _SpecialSettingState();
}

class _SpecialSettingState extends State<SpecialSetting> {
  @override
  Widget build(BuildContext context) {
    Provider.of<AppSettings>(context,listen: false).loadGifSetting();
    return Scaffold(
      backgroundColor: pinkColor,
      appBar: AppBar(
        title: Text(LocaleKeys.bottomNavigationBar_settingsPage_special.tr(), style: const TextStyle(color: whiteColor),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 400, 
              height: 150,
              child: Image.asset('assets/img/duck.png', fit: BoxFit.fill,)),
            h10box,
            const Center(child: Text('ördek')),
            h50box,
            Container(
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(70)),
                color: grey300color
              ),
              child: Column(
                children: [
                  h50box,
                  Center(
                    child: Text(
                      LocaleKeys.bottomNavigationBar_settingsPage_sureText.tr()
                    ),
                  ),
                  h20box,
                  Switch(
                    activeColor: blueColor,
                    value: Provider.of<AppSettings>(context).isGif,
                    onChanged: (_) {
                     Provider.of<AppSettings>(context,listen: false).toggleGif();               
                    }
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}