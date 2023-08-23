import 'package:flutter/material.dart';

import 'colors.dart';

// default texts
const searchText = 'Поиск';
const dateText = '06 Июля 2023';
const carsText = 'Машины';
const sixteenText = '16 осталось';
const planesText = 'Самалёты';
const tenText = '16 осталось';
const trainsText = 'Поезды';
const sevenText = '16 осталось';

// titleMedium
const hiText = 'Приветик, Хактан!';
const howText = 'Как сегодня чувствуешь??';
const double tmSize = 24;
const tmWeight = FontWeight.w500;

// bodyMedium
const excText = 'Упражнения';
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