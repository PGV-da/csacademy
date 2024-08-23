import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:csacademy/firebase_ref/references.dart';
import 'package:csacademy/models/question_paper_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  Future<void> uploadData() async {
    final fireStore = FirebaseFirestore.instance;
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final papersInAsstes = manifestMap.keys
        .where((path) =>
            path.startsWith("assets/DB/paper/") && path.contains(".json"))
        .toList();
    List<QuestionPaperModel> questionPapers = [];
    for (var paper in papersInAsstes) {
      String stringPaperContent = await rootBundle.loadString(paper);
      questionPapers
          .add(QuestionPaperModel.fromJson(json.decode(stringPaperContent)));
    }
    // print('Items Number ${questionPapers[0].description}');
    var batch = fireStore.batch();

    for (var paper in questionPapers) {
      batch.set(questionPaperRF.doc(paper.id), {
        "title": paper.title,
        "image_url": paper.imageUrl,
        "description": paper.description,
        "time_seconds": paper.timeSeconds,
        "questions_count": paper.questions == null ? 0 : paper.questions!.length
      });
    }
    await batch.commit();
  }
}
