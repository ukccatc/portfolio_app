import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/constants.dart';
import '../utils/data.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  Future<void> _openUrl(
    BuildContext context,
    Uri uri,
    String errorMessage,
  ) async {
    try {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (_) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(errorMessage)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 800;
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.paddingDesktop,
            vertical: 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, I'm",
                style: AppTextStyles.subHeader.copyWith(color: AppColors.accent),
              ),
              const SizedBox(height: 16),
              Text(
                Data.name,
                style: AppTextStyles.header.copyWith(
                  fontSize: isNarrow ? 36 : 64,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                Data.role,
                style: AppTextStyles.subHeader.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 32),
              Text(Data.goal, style: AppTextStyles.body.copyWith(fontSize: 20)),
              const SizedBox(height: 48),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ElevatedButton(
                    onPressed: () => _openUrl(
                      context,
                      Data.cvUri,
                      'Could not open CV',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 20,
                      ),
                    ),
                    child: const Text("View CV"),
                  ),
                  OutlinedButton(
                    onPressed: () => _openUrl(
                      context,
                      Uri(scheme: 'mailto', path: Data.email),
                      'Could not open email client',
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 20,
                      ),
                    ),
                    child: const Text("Contact Me"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
