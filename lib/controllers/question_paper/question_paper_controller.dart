import 'package:csacademy/services/firebase_storage_services.dart';
import 'package:get/get.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = ["biology", "chemistry", "maths", "physics"];
    try {
      for (var img in imgName) {
        final imgUrl = await Get.find<FirebaseStorageServices>().getImage(img);
        if (imgUrl != null) {
          allPaperImages.add(imgUrl);
        } else {
          print("Image not found for: $img");
        }
      }
    } catch (e) {
      print("Failed to load paper images: $e");
    }
  }
}
