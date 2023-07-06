import 'package:eds_final/app_bindings.dart';
import 'package:eds_final/features/home/home_dashboard.dart';
import 'package:eds_final/features/login/login_page.dart';
import 'package:eds_final/features/register/register_page.dart';
import 'package:eds_final/features/splash/splash_screen_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String list_mapel = '/listmapel';

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
      name: dashboard,
      page: () => HomeDashboard(),
      binding: AppBindings(),
    ),
  ];
}
