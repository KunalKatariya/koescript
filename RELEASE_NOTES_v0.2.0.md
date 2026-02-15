# Koescript v0.2.0 Release Notes

**Release Date:** February 16, 2025

## 🎉 Major Release: Complete Rebrand

This is a major release featuring a complete rebrand from **Satori** to **Koescript** to avoid naming conflicts with existing projects.

## ✨ What's New

### Rebrand to Koescript
- **New name**: Satori → Koescript (koe = voice in Japanese + script)
- New ASCII logo with bold Unicode box-drawing characters
- Updated command: `satori` → `koescript`
- New GitHub repositories:
  - Main: https://github.com/KunalKatariya/koescript
  - Tap: https://github.com/KunalKatariya/homebrew-koescript
- Config directory: `~/.satori` → `~/.koescript`

### Performance Improvements
- **Reduced translation latency**: 3s → 1-1.5s (50% faster)
  - Reduced beam search: 5 → 2 beams
  - Optimized max_length: 512 → 200 tokens
  - Added length_penalty for faster outputs
- **Reduced buffer time**: 6s → 4s for lower latency
- **Total latency improvement**: ~9-10s → ~5-6s (40-50% faster)

### Breaking Changes
- Command renamed: `satori` → `koescript`
- Config directory moved: `~/.satori` → `~/.koescript`
- Homebrew tap: `KunalKatariya/satori-cli` → `KunalKatariya/koescript`

## 📦 Installation

### Fresh Install
```bash
brew tap KunalKatariya/koescript
brew install koescript
```

### Upgrading from Satori
```bash
# Uninstall old version
brew uninstall satori-cli

# Remove old tap
brew untap KunalKatariya/satori-cli

# Install new version
brew tap KunalKatariya/koescript
brew install koescript

# Move your config (optional)
mv ~/.satori ~/.koescript
```

### From Source
```bash
git clone https://github.com/KunalKatariya/koescript.git
cd koescript
poetry install
```

## 🚀 Usage

All commands are the same, just replace `satori` with `koescript`:

```bash
# Initialize
koescript init

# List devices
koescript devices

# Start transcription
koescript transcribe

# With translation (Japanese → English)
koescript transcribe --translate --target-lang en
```

## 📝 Full Changelog

- `afe8417` - Remove old Satori formula files
- `315b21a` - Update logo to bold Unicode box-drawing style
- `8836d9f` - Replace all remaining Satori references and update logo
- `7ca03ee` - Rebrand from Satori to Koescript
- `ccccae5` - Optimize latency: reduce buffer and translation time
- `f36d8b6` - Update SHA256 for v0.1.1 tarball

**View full diff:** https://github.com/KunalKatariya/koescript/compare/v0.1.1...v0.2.0

---

## 💡 Why the Rebrand?

We discovered multiple existing projects named "Satori" in the CLI/developer tools space. To avoid confusion and create a unique identity, we chose **Koescript**:
- **Koe** (声) = voice in Japanese
- **Script** = transcription/code
- Unique name with no conflicts
- Maintains the Japanese-inspired naming theme

## 🎨 New Logo

```
    ██╗  ██╗ ██████╗ ███████╗███████╗ ██████╗██████╗ ██╗██████╗ ████████╗
    ██║ ██╔╝██╔═══██╗██╔════╝██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝
    █████╔╝ ██║   ██║█████╗  ███████╗██║     ██████╔╝██║██████╔╝   ██║
    ██╔═██╗ ██║   ██║██╔══╝  ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║
    ██║  ██╗╚██████╔╝███████╗███████║╚██████╗██║  ██║██║██║        ██║
    ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝
```

## 🔧 System Requirements

- **OS:** macOS 12+ (Monterey or later)
- **Python:** 3.11+
- **Hardware:** Apple Silicon (M1/M2/M3) or Intel processors
- **For GPU acceleration:** Apple Silicon Mac with Metal support

## 🐛 Known Issues

None reported for this release.

## 📚 Getting Help

- **Issues:** https://github.com/KunalKatariya/koescript/issues
- **Documentation:** See README.md and USAGE.md in the repository

## 🙏 Credits

Built with whisper.cpp, Meta NLLB-200, and the Textual TUI framework.

---

**Note:** This release includes performance optimizations that may slightly affect translation quality. If you experience issues, please report them on GitHub.
