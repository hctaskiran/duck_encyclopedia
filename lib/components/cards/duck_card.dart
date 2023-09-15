import 'dart:async';
import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';
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
  final centerMA = MainAxisAlignment.center;
  List _ducks = [];
  late String? currentLang;
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data/duck-$currentLang.json');
    final data = json.decode(response);
    setState(() {
      _ducks = data["ducks"];
    });
  }
  @override
  void initState() {
    super.initState();
  }
    @override
  void didChangeDependencies() {
    currentLang = context.locale.countryCode?.toLowerCase();
    readJson();
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: _CustomInts().cross200extent, 
            childAspectRatio: _CustomInts().aRatio1, 
            crossAxisSpacing: _CustomInts().space20, 
            mainAxisSpacing: _CustomInts().space20
          ),
        itemCount: _ducks.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              InkWell(
                onTap: () {
                  showDialog(
                    context: context, 
                    builder:(_) => AlertDialog(
                      scrollable: true,
                      title: Text(_ducks[index]["duckName"]),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Text(_ducks[index]["duckDescription"]),
                          Text(_ducks[index]["duckOrigin"]),
                          Text(_ducks[index]["duckGuise"]),
                          Text(_ducks[index]["duckInfo"]),
                          Text(_ducks[index]["duckAbout"]),
                        ],
                      ),
                    ));
                },
                child: Card(
                  margin: _CustomPadding().leftOnly5,
                  color: transColor,
                  child: Padding(
                    padding: _CustomPadding().all10,
                    child: Column(
                      children: <Widget>[
                        Text(
                          _ducks[index]["duckName"],
                          style: TextStyle(
                            color: yellowColor, 
                            fontSize: _CustomInts().size13, 
                            fontStyle: FontStyle.italic
                          ),
                        ),
                        h10box,
                        
                        SizedBox(
                            width: 150,
                            height: 125,
                            child: Provider.of<AppSettings>(context).isGif == true
                                ? Image.asset(_ducks[index]["duckGif"])
                                : ClipRRect(
                                    borderRadius: _CustomBorderRadius().circular25,
                                    child: Image.asset(_ducks[index]["duckImage"])))
                      ],
                    ),
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

class _CustomInts {
  final double space20 = 20;
  final double cross200extent = 200;
  final double aRatio1 = 1;
  final double size13 = 13;
}

class _CustomPadding {
  final leftOnly5 = const EdgeInsets.only(left: 5);
  final all10 = const EdgeInsets.all(10);
}

class _CustomBorderRadius {
  final circular25 = BorderRadius.circular(25);
}
