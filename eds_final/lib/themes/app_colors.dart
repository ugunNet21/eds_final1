import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBlue = Color(0xFF1757FF);
  static const Color primaryBlueDark = Color(0xFF123456);
  static const Color primaryBlueLight = Color(0xFFABCDEF);
  static const Color primaryBluemuda = Color(0xFF3A7FD5);
  static const Color primaryBluecerah = Color(0xFF01B1AF);
  static const Color secondaryYellow = Color(0xFFFFF511);
  static const Color accentBlack = Color(0xFF111111);
  static const Color accentBlackApple = Color(0xFF1A1F26);
  static const Color whitePutih = Color(0xFFFFFFFF);
  static const Color whitePutih1 = Color(0xFFF3F7F8);


  static bool get primaryBlueBrightness {
    // Implementasi logika untuk menentukan kecerahan warna primaryBlue
    // Misalnya, dapat menggunakan nilai R, G, B untuk mengecek kecerahan warna
    return (primaryBlue.red + primaryBlue.green + primaryBlue.blue) < 400;
  }
}
