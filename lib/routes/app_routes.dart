import 'package:csacademy/controllers/question_paper/questions_controller.dart';
import 'package:csacademy/controllers/question_paper_controller.dart';
import 'package:csacademy/controllers/zoom_drawer_controller.dart';
import 'package:csacademy/screens/home/home_screen.dart';
import 'package:csacademy/screens/introduction/introduction.dart';
import 'package:csacademy/screens/login/login_screen.dart';
import 'package:csacademy/screens/question/questions_screen.dart';
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
          name: HomeScreen.routeName,
          page: () => const HomeScreen(),
          binding: BindingsBuilder(() {
            Get.put(QuestionPaperController());
            Get.put(MyZoomDrawerController());
          }),
        ),
        GetPage(
          name: LoginScreen.routeName,
          page: () => LoginScreen(),
        ),
        GetPage(
          name: QuestionsScreen.routeName,
          page: () => QuestionsScreen(),
          binding: BindingsBuilder(() {
            Get.put(QuestionsController());
          }),
        )
      ];
}
