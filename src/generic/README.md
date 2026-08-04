# Generic Presentation Example

## How to run

### Option A — easiest, no install needed

Just double-click `index.html`. It opens in your default browser and works fully offline (all images/video are local files in this folder).

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
| `bg/` | background images + hero video |
| `about/` | headshot photos for the About section |
| `msai-logo.png`, `favicon.png` | branding assets |
| `serve.mjs` | tiny local static file server (Option B) |
| `README.md` | this file |

## Notes

Nothing here calls out to the internet except two Google Fonts links and the Tailwind CDN script in `index.html`'s `<head>` — an active internet connection gives you the intended fonts/styling; without one the page still renders, just with fallback system fonts.
