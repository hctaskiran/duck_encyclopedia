import 'package:duck_encyclopedia/constants/colors.dart';
import 'package:duck_encyclopedia/pages/tab_pages/real_home_page.dart';
import 'package:duck_encyclopedia/utilities/faq.dart';
import 'package:duck_encyclopedia/utilities/localizated_texts.dart';
import 'package:flutter/material.dart';

class AppGoalButton extends StatelessWidget {
  const AppGoalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text(LocalizatedTexts().appGoalContentTitle),
            content: Text(LocalizatedTexts().appGoalContentText),
          ),
        );
      },
      child: CustomFAQ(
        icon: Icons.question_mark_rounded,
        questions: LocalizatedTexts().appGoalTitle,
        subQuestion: LocalizatedTexts().appGoalSubtitle,
        color: greenColor,
      ),
    );
  }
}

class ExistButton extends StatelessWidget {
  const ExistButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text(LocalizatedTexts().whyExistContentTitle),
            content: Text(LocalizatedTexts().whyExistContentText),
          ),
        );
      },
      child: CustomFAQ(
        icon: Icons.fact_check_rounded,
        questions: LocalizatedTexts().whyExistTitle,
        subQuestion: LocalizatedTexts().whyExistSubtitle,
        color: redColor,
      ),
    );
  }
}

class InspirationButton extends StatelessWidget {
  const InspirationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              _duckImage(),
              AlertDialog(
                title: Text(LocalizatedTexts().appInspirationContenttitle),
                content: Text(LocalizatedTexts().appInspirationContentText),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _noButton(context),
                      _yesButton(context)
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
      child: _faq(),
    );
  }

  CustomFAQ _faq() {
    return CustomFAQ(
      icon: Icons.admin_panel_settings_rounded,
      questions: LocalizatedTexts().appInspirationTitle,
      subQuestion: LocalizatedTexts().apInspirationSubtitle,
      color: Colors.blue,
    );
  }

  TextButton _yesButton(BuildContext context) {
    return TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Show a text for 3 seconds
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: green700color,
                              content: Text(LocalizatedTexts().thankMessage),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                        child: Text(LocalizatedTexts().definitelyButton));
  }

  TextButton _noButton(BuildContext context) {
    return TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Show a text for 2 seconds
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: red700color,
                              content: Text(LocalizatedTexts().thinkMessage),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                          // Close the app after 3 seconds
                          Future.delayed(const Duration(seconds: 2), () {
                            closeApp();
                          });
                        },
                        child: Text(LocalizatedTexts().yesButton));
  }

  ClipRRect _duckImage() {
    return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/img/duck.png',
                height: 200,
                fit: BoxFit.cover,
              ),
            );
  }
}

