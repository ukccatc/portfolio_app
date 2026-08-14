import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/constants.dart';
import '../utils/data.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.pagePadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Me", style: AppTextStyles.header(context)),
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Data.aboutText,
                      style: AppTextStyles.body(context).copyWith(fontSize: 18),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      "Interests",
                      style: AppTextStyles.subHeader(context).copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        _InterestChip(
                          icon: FontAwesomeIcons.code,
                          label: "Coding",
                        ),
                        _InterestChip(
                          icon: FontAwesomeIcons.dumbbell,
                          label: "Gym",
                        ),
                        _InterestChip(
                          icon: FontAwesomeIcons.personRunning,
                          label: "Running",
                        ),
                        _InterestChip(
                          icon: FontAwesomeIcons.language,
                          label: "Languages",
                        ),
                        _InterestChip(
                          icon: FontAwesomeIcons.spa,
                          label: "Yoga teaching",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (MediaQuery.of(context).size.width > 800) ...[
                const SizedBox(width: 40),
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        'assets/about/oleh.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _InterestChip extends StatelessWidget {
  final FaIconData icon;
  final String label;

  const _InterestChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: colors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(icon, size: 16, color: colors.primary),
          const SizedBox(width: 8),
          Text(label, style: AppTextStyles.body(context)),
        ],
      ),
    );
  }
}
