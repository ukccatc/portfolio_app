import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/data.dart';
import '../models/models.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Data.skills.map((s) => s.category).toSet().toList();

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingDesktop,
        vertical: 60,
      ),
      width: double.infinity,
      color: AppColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Skills", style: AppTextStyles.header),
          const SizedBox(height: 16),
          Text(
            "My technical expertise across various domains.",
            style: AppTextStyles.body,
          ),
          const SizedBox(height: 40),
          ...categories.map((category) {
            final skills = Data.skills
                .where((s) => s.category == category)
                .toList();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category, style: AppTextStyles.subHeader),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: skills
                      .map((skill) => _SkillChip(skill: skill))
                      .toList(),
                ),
                const SizedBox(height: 32),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final Skill skill;

  const _SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill.name),
      backgroundColor: skill.isLegacy
          ? Colors.grey[200]
          : AppColors.primary.withOpacity(0.1),
      labelStyle: TextStyle(
        color: skill.isLegacy ? Colors.grey : AppColors.primary,
        fontWeight: FontWeight.w500,
      ),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
