import 'package:csacademy/widgets/common/background_decoration.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  static const String routeName = "/questionsscreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundDecoration(
        child: Center(child: Text("i am here")),
      ),
    );
  }
}
