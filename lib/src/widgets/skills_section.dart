import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/data.dart';
import '../models/models.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Data.skills.map((s) => s.category).toSet().toList();

    return Padding(
      padding: AppConstants.pagePadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Skills", style: AppTextStyles.header(context)),
          const SizedBox(height: 16),
          Text(
            "My technical expertise across various domains.",
            style: AppTextStyles.body(context),
          ),
          const SizedBox(height: 40),
          ...categories.map((category) {
            final skills = Data.skills
                .where((s) => s.category == category)
                .toList();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category, style: AppTextStyles.subHeader(context)),
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
          }),
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
    final colors = AppColors.of(context);
    return Chip(
      label: Text(skill.name),
      backgroundColor: skill.isLegacy
          ? colors.mutedFill
          : colors.primary.withValues(alpha: 0.15),
      labelStyle: TextStyle(
        color: skill.isLegacy ? colors.textSecondary : colors.primary,
        fontWeight: FontWeight.w500,
      ),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
