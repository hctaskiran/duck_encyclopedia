// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sized_boxes.dart';

class Vehicles extends StatelessWidget {
  const Vehicles({super.key, required this.icon, required this.vehicleName, required this.vehiclesLeft, required this.color});
  final icon;
  final String vehicleName;
  final int vehiclesLeft;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        icon,
                        size: 30,
                        color: grey200color,
                      )),
                  w12box,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vehicleName,
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16, color: blackColor)),
                      Text('$vehiclesLeft left',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14, color: grey400color)),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
