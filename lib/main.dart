import 'package:csacademy/bindings/initial_bindings.dart';
import 'package:csacademy/configs/themes/app_dark_theme.dart';
import 'package:csacademy/configs/themes/app_light_theme.dart';
import 'package:csacademy/controllers/theme_controller.dart';
import 'package:csacademy/data_uploader_screen.dart';
import 'package:csacademy/routes/app_routes.dart';
import 'package:csacademy/screens/introduction/introduction.dart';
import 'package:csacademy/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(
//     home: DataUploaderScreen(),
//   ));
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.find<ThemeController>().darkTheme,
      getPages: AppRoutes.routes(),
    );
  }
}
