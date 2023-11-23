import 'package:flutter/material.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context) {
  return screenSize(context).height;
}

double screenWidth(BuildContext context) {
  return screenSize(context).width;
}

TextStyle barCurrentNumberStyle =
    const TextStyle(color: Colors.white, fontSize: 36);

TextStyle barGoalDescriptionStyle =
    const TextStyle(color: Colors.white, fontSize: 12);
