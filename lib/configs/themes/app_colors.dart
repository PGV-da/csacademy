import 'package:csacademy/configs/themes/app_dark_theme.dart';
import 'package:csacademy/configs/themes/app_light_theme.dart';
import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color onSurfaceTextColor = Colors.white;
const Color correctAnswerColor = Color(0xFF3ac3cb);
const Color worngAnswerColor = Color(0xFFf85187);
const Color notAnsweredColor = Color(0xFF2a3c65);

const mainGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryLightColorLight,
      primaryColorLight,
    ]);

const mainGradientDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryDarkColorDark,
      primaryColorDark,
    ]);

LinearGradient mainGradient() =>
    UiPerameters.isDarkMode() ? mainGradientDark : mainGradientLight;

Color customScaffoldColor(BuildContext context) => UiPerameters.isDarkMode()
    ? const Color(0xFF2e3c62)
    : const Color.fromARGB(255, 240, 237, 255);

Color answerSelectedColor() => UiPerameters.isDarkMode()
    ? Theme.of(Get.context!).cardColor.withOpacity(0.5)
    : Theme.of(Get.context!).primaryColor;

Color answerBorderColor() => UiPerameters.isDarkMode()
    ? const Color.fromARGB(255, 20, 46, 158)
    : const Color.fromARGB(225, 221, 221, 221);
