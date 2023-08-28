import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
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
            maxCrossAxisExtent: 200, 
            childAspectRatio: 1, 
            crossAxisSpacing: 20, 
            mainAxisSpacing: 20),
        itemCount: _ducks.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Card(
                color: Colors.brown.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        _ducks[index]["duckName"],
                        style: const TextStyle(color: blackColor, fontSize: 12, fontStyle: FontStyle.italic),
                      ),
                      h10box,
                      SizedBox(
                          width: 150,
                          height: 130,
                          child: Provider.of<AppSettings>(context).isGif == true
                              ? Image.asset(_ducks[index]["duckGif"])
                              : Image.asset(_ducks[index]["duckImage"]))
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
