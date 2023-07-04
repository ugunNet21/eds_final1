import 'package:eds_final/core/constants/app_route.dart';
import 'package:eds_final/features/home_dashboard.dart';
import 'package:eds_final/features/mapel/list_mapel.dart';
import 'package:eds_final/features/register/register_page.dart';
import 'package:eds_final/features/splash/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_bindings.dart';
import 'features/login/login_binding.dart';
import 'features/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.splash,
      getPages: [
        GetPage(
          name: AppRoutes.splash,
          page: () => SplashScreenPage(),
        ),
        GetPage(
          name: AppRoutes.login,
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: AppRoutes.register,
          page: () => RegisterPage(),
        ),
        GetPage(
          name: AppRoutes.dashboard,
          page: () => HomeDashboard(),
        ),
        GetPage(
          name: AppRoutes.listmapel,
          page: () => listMapel(),
        ),

        // Daftar GetPage untuk halaman-halaman lain
      ],
      initialBinding: AppBindings(),
    );
  }
}
