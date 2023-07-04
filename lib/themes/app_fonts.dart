import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppFonts {
  static TextStyle get headingStyle {
    return GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get bodyStyle {
    return GoogleFonts.roboto(
      fontSize: 16,
    );
  }

  static TextStyle get titleStyle {
    return GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get paragraphStyle {
    return GoogleFonts.poppins(
      fontSize: 14,
    );
  }

  // Metode atau properti lainnya
}
