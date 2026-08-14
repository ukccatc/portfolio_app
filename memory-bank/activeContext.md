# Active Context

**Last updated:** 2026-08-14
**Focus:** PDS branding deployed to GitHub Pages.

## Current state

Public GitHub Pages site at https://ukccatc.github.io/portfolio_app/
Personal hero (Oleg) + company logo (Progressive Development Solutions) in nav/footer/favicon.

## Known gaps

- Project `link` field exists but no project has a URL

## Decisions

- Brand colors sampled from the logo: teal `#075960`, near-black `#232323`
- Favicon uses the three-bar mark only, not the wordmark
- Full logo asset: `assets/branding/pds_logo.png`
- Contact form uses `mailto:` instead of a backend
- CV is `web/Oleh_Rostovtsev_CV.pdf` via `Uri.base.resolve`
