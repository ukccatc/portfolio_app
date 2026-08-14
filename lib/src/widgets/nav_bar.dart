import 'package:flutter/material.dart';
import '../utils/constants.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key, this.height = 44, this.onTap});

  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    Widget image = Image.asset(
      AppConstants.logoAsset,
      height: height,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      semanticLabel: 'Progressive Development Solutions',
    );
    if (isDark) {
      image = DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: image,
        ),
      );
    }
    if (onTap == null) return image;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(onTap: onTap, child: image),
    );
  }
}

class NavBar extends StatelessWidget {
  final Function(int) onNavItemTap;
  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;

  const NavBar({
    super.key,
    required this.onNavItemTap,
    required this.onToggleTheme,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return _DesktopNavBar(
            onNavItemTap: onNavItemTap,
            onToggleTheme: onToggleTheme,
            themeMode: themeMode,
          );
        }
        return _MobileNavBar(
          onNavItemTap: onNavItemTap,
          onToggleTheme: onToggleTheme,
          themeMode: themeMode,
        );
      },
    );
  }
}

class _ThemeToggle extends StatelessWidget {
  const _ThemeToggle({required this.onToggleTheme});

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return IconButton(
      tooltip: isDark ? 'Switch to light theme' : 'Switch to dark theme',
      onPressed: onToggleTheme,
      icon: Icon(isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
    );
  }
}

class _DesktopNavBar extends StatelessWidget {
  final Function(int) onNavItemTap;
  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;

  const _DesktopNavBar({
    required this.onNavItemTap,
    required this.onToggleTheme,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingDesktop,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(bottom: BorderSide(color: colors.border)),
      ),
      child: Row(
        children: [
          BrandLogo(height: 48, onTap: () => onNavItemTap(0)),
          const Spacer(),
          _NavItem(title: "Home", onTap: () => onNavItemTap(0)),
          _NavItem(title: "Skills", onTap: () => onNavItemTap(1)),
          _NavItem(title: "Experience", onTap: () => onNavItemTap(2)),
          _NavItem(title: "Projects", onTap: () => onNavItemTap(3)),
          _NavItem(title: "Education", onTap: () => onNavItemTap(4)),
          _NavItem(title: "About", onTap: () => onNavItemTap(5)),
          _NavItem(title: "Contact", onTap: () => onNavItemTap(6)),
          const SizedBox(width: 8),
          _ThemeToggle(onToggleTheme: onToggleTheme),
        ],
      ),
    );
  }
}

class _MobileNavBar extends StatelessWidget {
  final Function(int) onNavItemTap;
  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;

  const _MobileNavBar({
    required this.onNavItemTap,
    required this.onToggleTheme,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMobile,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(bottom: BorderSide(color: colors.border)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: BrandLogo(height: 36, onTap: () => onNavItemTap(0)),
            ),
          ),
          _ThemeToggle(onToggleTheme: onToggleTheme),
          PopupMenuButton<int>(
            icon: Icon(Icons.menu, color: colors.textPrimary),
            tooltip: 'Open menu',
            onSelected: onNavItemTap,
            itemBuilder: (context) => [
              const PopupMenuItem(value: 0, child: Text("Home")),
              const PopupMenuItem(value: 1, child: Text("Skills")),
              const PopupMenuItem(value: 2, child: Text("Experience")),
              const PopupMenuItem(value: 3, child: Text("Projects")),
              const PopupMenuItem(value: 4, child: Text("Education")),
              const PopupMenuItem(value: 5, child: Text("About")),
              const PopupMenuItem(value: 6, child: Text("Contact")),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const _NavItem({required this.title, required this.onTap});

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 150),
            style: AppTextStyles.navLink(context).copyWith(
              color: _hovered ? colors.primary : colors.textPrimary,
            ),
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}
