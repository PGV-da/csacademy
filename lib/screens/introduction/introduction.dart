import 'package:csacademy/widgets/app_circle_button.dart';
import 'package:flutter/material.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 65,
                color: Colors.amber,
              ),
              SizedBox(height: 40),
              const Text("Confident for Success"),
              SizedBox(height: 40),
              AppCircleButton(
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 35,
                  ),
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
