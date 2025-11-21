import 'package:flutter/material.dart';
import '../utils/constants.dart';

class NavBar extends StatelessWidget {
  final Function(int) onNavItemTap;

  const NavBar({super.key, required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return _DesktopNavBar(onNavItemTap: onNavItemTap);
        } else {
          return _MobileNavBar(onNavItemTap: onNavItemTap);
        }
      },
    );
  }
}

class _DesktopNavBar extends StatelessWidget {
  final Function(int) onNavItemTap;

  const _DesktopNavBar({required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingDesktop,
        vertical: 20,
      ),
      color: AppColors.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Oleg Rostovtsev", style: AppTextStyles.subHeader),
          Row(
            children: [
              _NavItem(title: "Home", onTap: () => onNavItemTap(0)),
              _NavItem(title: "Skills", onTap: () => onNavItemTap(1)),
              _NavItem(title: "Experience", onTap: () => onNavItemTap(2)),
              _NavItem(title: "Projects", onTap: () => onNavItemTap(3)),
              _NavItem(title: "Education", onTap: () => onNavItemTap(4)),
              _NavItem(title: "About", onTap: () => onNavItemTap(5)),
              _NavItem(title: "Contact", onTap: () => onNavItemTap(6)),
            ],
          ),
        ],
      ),
    );
  }
}

class _MobileNavBar extends StatelessWidget {
  final Function(int) onNavItemTap;

  const _MobileNavBar({required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMobile,
        vertical: 16,
      ),
      color: AppColors.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Oleg Rostovtsev", style: AppTextStyles.subHeader),
          PopupMenuButton<int>(
            icon: const Icon(Icons.menu),
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

class _NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _NavItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: InkWell(
        onTap: onTap,
        child: Text(title, style: AppTextStyles.navLink),
      ),
    );
  }
}
