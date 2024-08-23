import 'package:csacademy/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child: Image.asset(
          "assets/images/cs_academy.jpg",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
