import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../utils/constants.dart';
import '../widgets/nav_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/education_section.dart';
import '../widgets/about_section.dart';
import '../widgets/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.onToggleTheme,
    required this.themeMode,
  });

  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();

  final List<Widget> _sections = const [
    HeroSection(),
    SkillsSection(),
    ExperienceSection(),
    ProjectsSection(),
    EducationSection(),
    AboutSection(),
    ContactSection(),
  ];

  int _topIndex = 0;

  @override
  void initState() {
    super.initState();
    _itemPositionsListener.itemPositions.addListener(_updateTopIndex);
  }

  @override
  void dispose() {
    _itemPositionsListener.itemPositions.removeListener(_updateTopIndex);
    super.dispose();
  }

  void _updateTopIndex() {
    final positions = _itemPositionsListener.itemPositions.value;
    if (positions.isEmpty) return;
    final visible = positions.where((p) => p.itemTrailingEdge > 0);
    if (visible.isEmpty) return;
    final first = visible.reduce((a, b) => a.index < b.index ? a : b);
    if (first.index != _topIndex) {
      setState(() => _topIndex = first.index);
    }
  }

  void _scrollToSection(int index) {
    _itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final sectionColors = [
      colors.background,
      colors.surface,
      colors.background,
      colors.surface,
      colors.background,
      colors.surface,
      colors.background,
    ];

    return Scaffold(
      body: Column(
        children: [
          NavBar(
            onNavItemTap: _scrollToSection,
            onToggleTheme: widget.onToggleTheme,
            themeMode: widget.themeMode,
          ),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemCount: _sections.length + 1,
              itemBuilder: (context, index) {
                if (index == _sections.length) {
                  return ColoredBox(
                    color: colors.surface,
                    child: const _SiteFooter(),
                  );
                }
                return ColoredBox(
                  color: sectionColors[index],
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: AppConstants.maxContentWidth,
                      ),
                      child: _sections[index],
                    ),
                  ),
                );
              },
              itemScrollController: _itemScrollController,
              itemPositionsListener: _itemPositionsListener,
            ),
          ),
        ],
      ),
      floatingActionButton: _topIndex > 0
          ? FloatingActionButton(
              onPressed: () => _scrollToSection(0),
              tooltip: 'Back to top',
              child: const Icon(Icons.arrow_upward),
            )
          : null,
    );
  }
}

class _SiteFooter extends StatelessWidget {
  const _SiteFooter();

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: colors.border)),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: AppConstants.maxContentWidth,
          ),
          child: Padding(
            padding: AppConstants.pagePadding(
              context,
              verticalDesktop: 28,
              verticalMobile: 20,
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 16,
              runSpacing: 12,
              children: [
                const BrandLogo(height: 36),
                Text(
                  'Oleg Rostovtsev',
                  style: AppTextStyles.body(context).copyWith(
                    color: colors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
