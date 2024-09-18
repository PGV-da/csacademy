import 'package:csacademy/controllers/question_paper/questions_controller.dart';
import 'package:csacademy/controllers/question_paper_controller.dart';
import 'package:csacademy/controllers/zoom_drawer_controller.dart';
import 'package:csacademy/screens/main_question/main_question_screen.dart';
import 'package:csacademy/screens/introduction/introduction.dart';
import 'package:csacademy/screens/login/login_screen.dart';
import 'package:csacademy/screens/question/answer_check_screen.dart';
import 'package:csacademy/screens/question/questions_screen.dart';
import 'package:csacademy/screens/question/result_screen.dart';
import 'package:csacademy/screens/question/test_overview_screen.dart';
import 'package:csacademy/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: '/',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/introduction',
          page: () => const AppIntroductionScreen(),
        ),
        GetPage(
          name: MainQuestionScreen.routeName,
          page: () => const MainQuestionScreen(),
          binding: BindingsBuilder(() {
            Get.put(QuestionPaperController());
            Get.put(MyZoomDrawerController());
          }),
        ),
        GetPage(
          name: LoginScreen.routeName,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: QuestionsScreen.routeName,
          page: () => const QuestionsScreen(),
          binding: BindingsBuilder(() {
            Get.put<QuestionsController>(QuestionsController());
          }),
        ),
        GetPage(
          name: TestOverviewScreen.routeName,
          page: () => const TestOverviewScreen(),
        ),
        GetPage(
          name: ResultScreen.routeName,
          page: () => const ResultScreen(),
        ),
        GetPage(
          name: AnswerCheckScreen.routeName,
          page: () => const AnswerCheckScreen(),
        )
      ];
}
