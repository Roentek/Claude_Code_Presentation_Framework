# Generic Template Presentation

A blank-content starting point built from the `strategy-deck` implementation: same scrollable
background video/photos, transitions, animations, colors, and UI components — with all
business-specific copy stripped out and replaced by generic section names and inline guidance
telling you what to put where.

## Section map (top to bottom)

| # | Section id | Placeholder name | What it's for |
| --- | --- | --- | --- |
| 1 | `#hero` | Hero | Cover slide — title, one-sentence hook, 3 headline stats |
| 2 | `#introduction` | Introduction | Background/context the audience needs before the problem |
| 3 | `#problem` | Problem | Name the problem in one line; today vs. target comparison |
| 4 | `#approach` | Approach | Your big idea, broken into 4 pillars |
| 5 | `#phase1` | Phase 1 | Near-term actions (discovery, alignment, quick wins) |
| 6 | `#phase2` | Phase 2 | Mid-term actions (the main build) |
| 7 | `#phase3` | Phase 3 | Long-term actions (commitment, roadmap handoff) |
| 8 | `#timeline` | Timeline | Quarterly milestone columns + interactive rollout heatmap |
| 9 | `#resources` | Resources | Investment ask — KPI cards, interactive cost chart, ROI table |
| 10 | `#close` | Conclusion | The ask — what you need from whom, call to action |
| 11 | `#about` | About | **Kept intact** — bio content is not a placeholder, leave as-is |

Every section other than About carries a small uppercase `SECTION: ...` label plus guidance
copy in place of real content — read it, replace it, delete the label when you ship.

The Timeline heatmap and Resources bar chart are fully wired, interactive JS components with
example data (`heatData` / `costData` near the bottom of `index.html`) — edit those arrays to
swap in your own rows, quarters, and numbers.

## How to run

### Option A — easiest, no install needed

Just double-click `index.html`. It opens in your default browser and works fully offline (all images/video are local files shared from `../shared/`).

### Option B — local server

Use this if the video background doesn't autoplay, or if you see a browser security warning about local files.

Requires [Node.js](https://nodejs.org) installed.

1. Open a terminal in this folder.
2. Run:
   ```bash
   node serve.mjs
   ```
3. Open [http://localhost:3000](http://localhost:3000) in your browser.
4. Press `Ctrl+C` in the terminal to stop the server when done.

## What's inside

| Path | Description |
| --- | --- |
| `index.html` | the deck (single file, all styles/scripts inline) |
| `../shared/bg/` | background images + hero video (shared across projects) |
| `../shared/about/` | headshot photos for the About section (shared across projects) |
| `logo.svg`, `favicon.svg` | branding assets |
| `serve.mjs` | tiny local static file server (Option B) |
| `README.md` | this file |

## Notes

Nothing here calls out to the internet except two Google Fonts links and the Tailwind CDN script in `index.html`'s `<head>` — an active internet connection gives you the intended fonts/styling; without one the page still renders, just with fallback system fonts.
