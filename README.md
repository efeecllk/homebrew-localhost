# Homebrew Tap for localhost

This is the official Homebrew tap for [localhost](https://github.com/efeecllk/localhost) - a macOS menu bar app that auto-detects running dev processes grouped by project.

## Installation

```bash
brew tap efeecllk/localhost
brew install --cask localhost
```

## Requirements

- macOS 13.0+ (Ventura or later)
- Apple Silicon (M1/M2/M3/M4) or Intel

## First Launch (unsigned builds)

Since the app is not signed with an Apple Developer certificate, macOS will block it on first launch:

1. Right-click the app and select **Open**
2. Click **Open** in the security dialog

Or via terminal:
```bash
xattr -cr /Applications/localhost.app
```

## What it does

- Detects running dev servers (Vite, Next.js, Django, Flask, Rails, etc.)
- Groups processes by project directory
- Shows Docker containers alongside native processes
- Lives in your menu bar, zero configuration needed

## Uninstall

```bash
brew uninstall --cask localhost
brew untap efeecllk/localhost
```

## Links

- [Main Repository](https://github.com/efeecllk/localhost)
- [Releases](https://github.com/efeecllk/localhost/releases)
