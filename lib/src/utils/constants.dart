import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF075960);
  static const Color secondary = Color(0xFF231F20);
  static const Color background = Color(0xFFF7F8F8);
  static const Color surface = Colors.white;
  static const Color textPrimary = Color(0xFF232323);
  static const Color textSecondary = Color(0xFF5C6566);
  static const Color accent = Color(0xFF075960);
}

class AppTextStyles {
  static TextStyle get header => GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle get subHeader => GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle get body => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  static TextStyle get navLink => GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
}

class AppConstants {
  static const double maxContentWidth = 1200.0;
  static const double paddingMobile = 16.0;
  static const double paddingDesktop = 32.0;
  static const String logoAsset = 'assets/branding/pds_logo.png';

  static bool isNarrow(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 800;

  static EdgeInsets pagePadding(
    BuildContext context, {
    double verticalDesktop = 80,
    double verticalMobile = 48,
  }) {
    final narrow = isNarrow(context);
    return EdgeInsets.symmetric(
      horizontal: narrow ? paddingMobile : paddingDesktop,
      vertical: narrow ? verticalMobile : verticalDesktop,
    );
  }
}
