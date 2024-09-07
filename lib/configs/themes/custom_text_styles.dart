import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:flutter/material.dart';

TextStyle cardTitles(context) => TextStyle(
      color: UiPerameters.isDarkMode()
          ? Theme.of(context).textTheme.bodyLarge!.color
          : Theme.of(context).primaryColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

const questionTS = TextStyle(fontSize: 16, fontWeight: FontWeight.w800);
const detailText = TextStyle(fontSize: 12);
const headerText = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w700,
  color: onSurfaceTextColor,
);
