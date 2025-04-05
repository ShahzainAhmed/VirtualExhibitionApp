import 'package:get/get.dart';
import 'package:virtual_exhibition_app/routes/app_routes.dart';
import 'package:virtual_exhibition_app/views/about/about_screen.dart';
import 'package:virtual_exhibition_app/views/detail_screen/detail_screen.dart';
import 'package:virtual_exhibition_app/views/exhibition/exhibition_screen.dart';
import 'package:virtual_exhibition_app/views/home/home_screen.dart';
import 'package:virtual_exhibition_app/views/onboarding/onboarding_screen.dart';

class AppPages {
  AppPages._(); // private
  static var allPages = [
    GetPage(
      name: AppRoutes.homescreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.detailScreen,
      page: () => const DetailScreen(),
    ),
    GetPage(
      name: AppRoutes.exhibitionScreen,
      page: () => const ExhibitionScreen(),
    ),
    GetPage(
      name: AppRoutes.aboutScreen,
      page: () => const AboutScreen(),
    )
  ];
}
