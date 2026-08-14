# Active Context

**Last updated:** 2026-08-14
**Focus:** Real contact details and CV wired in. No deploy.

## Current state

Working Flutter Web portfolio on `main`. Contacts and CV are live in code.

## Known gaps

- `web/icons/` and `favicon.png` are missing; manifest still points at them
- Project `link` field exists but no project has a URL

## Decisions

- Contact form uses `mailto:` instead of a backend
- GitHub URL: `https://github.com/ukccatc`
- LinkedIn: `https://www.linkedin.com/in/oleg-rostovtsev`
- CV is a static file in `web/Oleh_Rostovtsev_CV.pdf`, opened via `Uri.base.resolve` so GitHub Pages `--base-href` still works
- `font_awesome_flutter` 11 + `FaIcon` required: Flutter 3.47 made `IconData` final
- Memory bank follows Bowls file names, without `releases/current.yaml`
