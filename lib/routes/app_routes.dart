import 'package:eds_final/app_bindings.dart';
import 'package:eds_final/features/discuss/disscusion_page.dart';
import 'package:eds_final/features/home/home_tabs.dart';
import 'package:eds_final/features/login/login_page.dart';
import 'package:eds_final/features/register/register_page.dart';
import 'package:eds_final/features/splash/splash_screen_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String hometab = '/hometab';
  static const String listMapel = '/listmapel';
  static const String disscusionPage = '/disscusion';

  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => SplashScreenPage(),
      binding: AppBindings(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
      binding: AppBindings(),
    ),
    GetPage(
      name: register,
      page: () => RegisterPage(),
      binding: AppBindings(),
    ),
    GetPage(
      name: hometab,
      page: () => HomeTab(),
      binding: AppBindings(),
    ),
    GetPage(
      name: disscusionPage,
      page: () => const DisscusionPage(),
      binding: AppBindings(),
    ),
  ];
}
