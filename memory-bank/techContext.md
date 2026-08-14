# Tech Context

- Flutter Web, Dart SDK `^3.10.0`, Material 3
- Packages: `google_fonts`, `font_awesome_flutter`, `url_launcher`, `scrollable_positioned_list`
- Lints: `package:flutter_lints/flutter.yaml`
- Repo: https://github.com/ukccatc/portfolio_app
- Deploy: GitHub Actions on push to `main` → `flutter build web --release --base-href "/portfolio_app/"` → `gh-pages`

## Local run

```bash
flutter pub get
flutter run -d chrome
```

## Analyzer note

`analysis_options.yaml` excludes `build/**` and platform folders.
