import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/data.dart';
import '../models/models.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.pagePadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Work Experience", style: AppTextStyles.header(context)),
          const SizedBox(height: 40),
          ...Data.experience.map((exp) => _ExperienceCard(experience: exp)),
        ],
      ),
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  final Experience experience;

  const _ExperienceCard({required this.experience});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: colors.shadow,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final isNarrow = constraints.maxWidth < 600;
              final roleAndCompany = Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(experience.role, style: AppTextStyles.subHeader(context)),
                  const SizedBox(height: 4),
                  Text(
                    experience.company,
                    style: AppTextStyles.body(context).copyWith(
                      fontWeight: FontWeight.bold,
                      color: colors.primary,
                    ),
                  ),
                ],
              );
              final period = Text(
                experience.period,
                style: AppTextStyles.body(context).copyWith(
                  color: colors.textSecondary,
                ),
              );

              if (isNarrow) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    roleAndCompany,
                    const SizedBox(height: 8),
                    period,
                  ],
                );
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: roleAndCompany),
                  period,
                ],
              );
            },
          ),
          const SizedBox(height: 16),
          Text(experience.description, style: AppTextStyles.body(context)),
          if (experience.techStack.isNotEmpty) ...[
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: experience.techStack
                  .map(
                    (tech) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: colors.background,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: colors.border),
                      ),
                      child: Text(
                        tech,
                        style: TextStyle(
                          fontSize: 12,
                          color: colors.textSecondary,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }
}
