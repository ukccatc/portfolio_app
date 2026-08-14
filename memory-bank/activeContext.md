# Active Context

**Last updated:** 2026-08-14
**Focus:** Dark theme + high-contrast favicon.

## Current state

Public GitHub Pages site at https://ukccatc.github.io/portfolio_app/
Light/dark via `ThemeMode.system` plus a navbar toggle.

## Known gaps

- Project `link` field exists but no project has a URL

## Decisions

- `AppColors.light` / `AppColors.dark` via `AppColors.of(context)`
- Favicon is the three-bar mark on teal, plus `favicon.ico?v=3` to bust cache
- Full logo asset: `assets/branding/pds_logo.png` (transparent background; white plate in dark mode)
- Contact form uses `mailto:`
- CV is `web/Oleh_Rostovtsev_CV.pdf` via `Uri.base.resolve`
