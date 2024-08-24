import 'package:csacademy/configs/themes/app_dark_theme.dart';
import 'package:csacademy/configs/themes/app_light_theme.dart';
import 'package:csacademy/configs/themes/ui_perameters.dart';
import 'package:flutter/material.dart';

const Color onSurfaceColor = Colors.white;

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
