import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle mainQuestion = GoogleFonts.cormorantGaramond(
    color: AppColors.black,
    fontSize: 34,
    fontWeight: FontWeight.w800,
  ) as TextStyle;
  static TextStyle whiteButtonBold24 = GoogleFonts.cormorantGaramond(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.w800,
  ) as TextStyle;
}