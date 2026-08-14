import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  const AppColors({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.surface,
    required this.textPrimary,
    required this.textSecondary,
    required this.accent,
    required this.onPrimary,
    required this.border,
    required this.shadow,
    required this.mutedFill,
  });

  final Color primary;
  final Color secondary;
  final Color background;
  final Color surface;
  final Color textPrimary;
  final Color textSecondary;
  final Color accent;
  final Color onPrimary;
  final Color border;
  final Color shadow;
  final Color mutedFill;

  static const light = AppColors(
    primary: Color(0xFF075960),
    secondary: Color(0xFF231F20),
    background: Color(0xFFF7F8F8),
    surface: Color(0xFFFFFFFF),
    textPrimary: Color(0xFF232323),
    textSecondary: Color(0xFF5C6566),
    accent: Color(0xFF075960),
    onPrimary: Color(0xFFFFFFFF),
    border: Color(0xFFE6E8E8),
    shadow: Color(0x0D000000),
    mutedFill: Color(0xFFE8EBEB),
  );

  static const dark = AppColors(
    primary: Color(0xFF3DB8C0),
    secondary: Color(0xFF9AA3A3),
    background: Color(0xFF0E1414),
    surface: Color(0xFF171E1E),
    textPrimary: Color(0xFFF3F5F5),
    textSecondary: Color(0xFFA8B3B3),
    accent: Color(0xFF3DB8C0),
    onPrimary: Color(0xFF062E31),
    border: Color(0xFF2C3535),
    shadow: Color(0x66000000),
    mutedFill: Color(0xFF222A2A),
  );

  static AppColors of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark ? dark : light;
  }
}

class AppTextStyles {
  static TextStyle header(BuildContext context) => GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.of(context).textPrimary,
  );

  static TextStyle subHeader(BuildContext context) => GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.of(context).textPrimary,
  );

  static TextStyle body(BuildContext context) => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.of(context).textSecondary,
    height: 1.5,
  );

  static TextStyle navLink(BuildContext context) => GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.of(context).textPrimary,
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
