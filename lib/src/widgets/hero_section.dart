import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/constants.dart';
import '../utils/data.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
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
          Text(Data.name, style: AppTextStyles.header.copyWith(fontSize: 64)),
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
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement CV download
                },
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
              const SizedBox(width: 16),
              OutlinedButton(
                onPressed: () async {
                  final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: Data.email,
                  );
                  if (await canLaunchUrl(emailLaunchUri)) {
                    await launchUrl(emailLaunchUri);
                  }
                },
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
  }
}
