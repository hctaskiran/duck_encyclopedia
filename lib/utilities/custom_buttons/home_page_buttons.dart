import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/pages/tab_pages/real_home_page.dart';
import 'package:frontend_tutorial/utilities/faq.dart';
import 'package:frontend_tutorial/utilities/localizated_texts.dart';

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
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/img/duck.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              AlertDialog(
                title: Text(LocalizatedTexts().appInspirationContenttitle),
                content: Text(LocalizatedTexts().appInspirationContentText),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
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
                          child: Text(LocalizatedTexts().yesButton)),
                      TextButton(
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
                          child: Text(LocalizatedTexts().definitelyButton))
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
        questions: LocalizatedTexts().appInspirationTitle,
        subQuestion: LocalizatedTexts().apInspirationSubtitle,
        color: Colors.blue,
      ),
    );
  }
}

