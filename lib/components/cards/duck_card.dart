import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:frontend_tutorial/settings/app_settings.dart';
import 'package:provider/provider.dart';

class DuckCard extends StatefulWidget {
  const DuckCard({
    super.key,
  });

  @override
  State<DuckCard> createState() => _DuckCardState();
}

class _DuckCardState extends State<DuckCard> {
  late List _ducks = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data/duck.json');
    final data = json.decode(response);
    setState(() {
      _ducks = data["ducks"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, childAspectRatio: 1, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemCount: _ducks.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Card(
                margin: const EdgeInsets.only(left: 3),
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        LocaleKeys.duckPage[index],
                        //_ducks[index]["duckName"],
                        style: const TextStyle(color: Colors.yellow, fontSize: 14, fontStyle: FontStyle.italic),
                      ),
                      h10box,
                      SizedBox(
                          width: 150,
                          height: 125,
                          child: Provider.of<AppSettings>(context).isGif == true
                              ? Image.asset(_ducks[index]["duckGif"])
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(_ducks[index]["duckImage"])))
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
