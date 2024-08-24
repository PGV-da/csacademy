import 'package:csacademy/services/firebase_storage_services.dart';
import 'package:csacademy/controllers/auth_controller.dart';
import 'package:csacademy/controllers/theme_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    Get.lazyPut(() => FirebaseStorageServices());
  }
}
