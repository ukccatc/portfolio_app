# System Patterns

Small Flutter Web app. No extra architecture layers.

```
lib/
  main.dart
  src/
    pages/home_page.dart      # nav + ScrollablePositionedList
    models/models.dart        # Skill, Experience, Project, Education
    utils/data.dart           # all content
    utils/constants.dart      # colors, text styles, widths
    widgets/*_section.dart    # one widget per section + nav_bar.dart
```

## Patterns to reuse

- One StatelessWidget per section unless local form state is required
- Breakpoint: `maxWidth > 800` for desktop vs mobile
- Content width capped at `AppConstants.maxContentWidth` (1200)
- External links: `launchUrl(..., mode: LaunchMode.externalApplication)`
- Contact form: `mailto:` with encoded subject/body — no backend
- On mobile, do not put `Expanded` inside a vertical Flex that lives in a scroll view

## Do not add

- New state management, services, helpers, or folder conventions
- New packages unless an existing one cannot do the job
