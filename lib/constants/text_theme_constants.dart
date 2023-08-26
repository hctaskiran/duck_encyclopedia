import 'package:flutter/material.dart';
import 'colors.dart';

// default texts
const whatText = 'What is this application?';
const whatText2 = 'What is this application?';
const whyText = 'Why does it exists?';
const whyText2 = 'Why does it exists?';
const photoText = 'Inspiration of the app';
const photoText2 = '''
You can see this picture everywhere 
in this application''';

// titleMedium
const hiText = 'Hello, Hacktan!';
const howText = 'Time to learn much about ducks!';
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