import 'package:csacademy/controllers/auth_controller.dart';
import 'package:csacademy/screens/home/home_screen.dart';
import 'package:csacademy/screens/main_question/main_question_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MyZoomDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  Rxn<User?> user = Rxn();

  @override
  void onReady() {
    user.value = Get.find<AuthController>().getUser();
    super.onReady();
  }

  void toggleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }

  void goToHome() {
    Get.offNamedUntil(HomeScreen.routeName, (route) => false);
  }

  void goToTest() {
    Get.offNamedUntil(MainQuestionScreen.routeName, (route) => false);
  }

  void signOut() {
    Get.find<AuthController>().signOut();
  }

  void signIn() {}

  void openSettings() {}

  void aboutUs() {}
}
