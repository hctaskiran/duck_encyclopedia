import 'package:flutter/material.dart';

import 'colors.dart';

// default texts
const searchText = 'Search';
const dateText = '06 June 2023';
const carsText = 'Vehicles';
const planesText = 'Planes';
const trainsText = 'Поезды';

// titleMedium
const hiText = 'Hello, Hacktan!';
const howText = 'How you feel today';
const double tmSize = 24;
const tmWeight = FontWeight.w500;

// bodyMedium
const excText = 'Events';
const double bsSize = 18;
const bsWeight = FontWeight.w500;

class CustomTextStyles {
  TextStyle bodySmall() {
    return const TextStyle(
          fontSize: bsSize,
          fontWeight: bsWeight,
          color: blackColor
        );
  }

  TextStyle titleSmall() {
    return const TextStyle(
          fontSize: tmSize,
          fontWeight: tmWeight,
          color: whiteColor
        );
  }
}