import 'package:eds_final/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import '../../routes/app_routes.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menggunakan Future.delayed untuk menunda navigasi ke halaman berikutnya
    Future.delayed(Duration(seconds: 4), () {
      Get.offNamed(AppRoutes.login); // Mengarahkan ke halaman login
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/ic_splash.png',
          width: 120,
        ),
      ),
      backgroundColor: AppColors.primaryBluemuda,
    );
  }
}
