// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/settings/app_settings.dart';
import 'package:frontend_tutorial/utilities/localizated_texts.dart';
import 'package:provider/provider.dart';

class SpecialButton extends StatefulWidget {
  const SpecialButton({
    super.key,
    required List<Icon> icons,
  }) : _icons = icons;

  final List<Icon> _icons;
  
  @override
  State<SpecialButton> createState() => _SpecialButtonState();
}

class _SpecialButtonState extends State<SpecialButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AlertDialog(
                          title: Text(LocalizatedTexts().specialSettingTitle),
                          content: Column(
                            children: [
                              Text(LocalizatedTexts().activateButton),
                              Switch(
                                  activeColor: blueColor,
                                  inactiveThumbColor: blackColor,
                                  value: Provider.of<AppSettings>(context).isGif,
                                  onChanged: (value) {
                                    setState(() {
                                      Provider.of<AppSettings>(context, listen: false).toggleGif();  
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget._icons[0],
          w12box,
          customTextButton(
            text: LocalizatedTexts().specialSettingTitle,
          )
        ],
      ),
    );
  }
}

class CreditButton extends StatelessWidget {
  const CreditButton({
    super.key,
    required List<Icon> icons,
  }) : _icons = icons;

  final List<Icon> _icons;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
    context: context,
    builder: (_) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                AlertDialog(
                  title: Text(LocalizatedTexts().creditsTitle),
                  content: Text(LocalizatedTexts().creditsContent),
                )
              ],
            )
          ],
        ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_icons[1], w12box, customTextButton(text: LocalizatedTexts().creditsTitle)],
      ),
    );
  }
}

class DeveloperButton extends StatelessWidget {
  const DeveloperButton({
    super.key,
    required List<Icon> icons,
  }) : _icons = icons;

  final List<Icon> _icons;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
    context: context,
    builder: (_) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                AlertDialog(
                  title: Text(LocalizatedTexts().aboutDeveloperTitle),
                  content: Text(LocalizatedTexts().aboutDeveloperContent),
                )
              ],
            )
          ],
        ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icons[2],
          w12box,
          customTextButton(
            text: LocalizatedTexts().aboutDeveloperTitle,
          )
        ],
      ),
    );
  }
}

////////////////////////////////////////////////
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