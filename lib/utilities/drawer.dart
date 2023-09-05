import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/settings/app_settings.dart';
import 'package:provider/provider.dart';
import '../pages/home_button.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
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
          children: [
            _arrowIcon(),
            _drawerText(
              text: 'H O M E',
            ),
          ],
        ),
        Switch(
            activeColor: blueColor,
            value: Provider.of<AppSettings>(context).isGif,
            onChanged: (_) {
              Provider.of<AppSettings>(context, listen: false).toggleGif();
            }),
      ],
    ));
  }

  Icon _arrowIcon() {
    return const Icon(
            Icons.arrow_forward_ios,
            size: 30,
          );
  }
}

class _drawerText extends StatelessWidget {
  const _drawerText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
