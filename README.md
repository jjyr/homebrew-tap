# Homebrew Tap

Custom Homebrew formulas and casks by jjyr.

## Installation

```bash
brew tap jjyr/tap
```

## Available Casks

### Meow

Native macOS app for translating DRM-free EPUB books with Codex CLI,
DeepSeek, or an OpenAI-compatible API.

```bash
brew install --cask meow
```

**Notes:**

- Supports EPUB 2 and EPUB 3
- Unsigned app: the cask clears quarantine attributes after install

### DJI Importer

Native macOS app for importing DJI Pocket 3 media into Apple Photos.

```bash
brew install --cask dji-importer
```

**Notes:**
- Imports JPG, JPEG, and MP4 files into Photos
- Asks Photos to skip duplicates during import
- Unsigned app: the cask clears quarantine attributes after install

### Vibe Caffeine

Menu bar app that prevents Mac sleep when AI coding tools (Claude Code, Codex, OpenCode) are active.

```bash
brew install --cask vibe-caffeine
```

**Features:**
- Auto mode: Monitors AI tool file activity, prevents sleep during work
- Manual mode: Force prevents sleep on demand
- 30-second idle timeout in auto mode
- Launch at Login support
