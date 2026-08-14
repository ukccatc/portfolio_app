import 'package:flutter/material.dart';
import 'src/pages/home_page.dart';
import 'src/utils/constants.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oleg Rostovtsev - Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          surface: AppColors.surface,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: TextTheme(
          displayLarge: AppTextStyles.header,
          displayMedium: AppTextStyles.subHeader,
          bodyLarge: AppTextStyles.body,
        ),
      ),
      home: const HomePage(),
    );
  }
}
