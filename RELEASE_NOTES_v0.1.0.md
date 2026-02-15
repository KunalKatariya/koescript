# Satori CLI v0.1.0 - Initial Release

🎤 **Real-time multilingual transcription and translation with GPU acceleration**

## What is Satori?

Satori is a powerful CLI tool for real-time audio transcription and translation. It uses whisper.cpp with Metal GPU acceleration for lightning-fast transcription (30-50x faster than CPU) and Meta NLLB-200 for high-quality translation.

## ✨ Features

### Core Functionality
- **Real-time transcription** with 1-2 second latency
- **GPU-accelerated** via whisper.cpp (Metal for Apple Silicon)
- **Multilingual support** for 100+ languages
- **Live translation** between Japanese, English, and Hindi
- **System audio capture** for YouTube, Spotify, etc. (via BlackHole)
- **Voice Activity Detection** for natural phrase boundaries
- **Beautiful TUI** with live updates and auto-scroll

### Technical Highlights
- **30-50x faster** than CPU-only transcription
- **92-95% accuracy** with beam search decoding
- **100% offline** - no cloud APIs required
- **Automatic model downloads** with progress tracking
- **Smart error handling** with corruption detection

## 🚀 Quick Start

### Installation

#### Homebrew (Recommended)
```bash
brew install KunalKatariya/satori-cli/satori-cli
```

#### From Source
```bash
git clone https://github.com/KunalKatariya/satori-cli.git
cd satori-cli
poetry install
```

### Setup
```bash
# Initialize Satori (installs dependencies, downloads models)
satori init

# List available audio devices
satori devices

# Start transcribing with microphone
satori translate

# Transcribe YouTube with translation (Japanese → English)
satori translate --loopback --language ja --translate-to en
```

## 📋 Requirements

### macOS (Tested)
- macOS 12+ (Apple Silicon or Intel)
- Python 3.11+
- Homebrew (for easy installation)

### System Dependencies (Auto-installed)
- **whisper.cpp** - GPU-accelerated transcription
- **BlackHole** - System audio capture (optional, for YouTube/Spotify)

## 🎯 Usage Examples

### Basic Transcription
```bash
# Microphone input
satori translate

# YouTube/Spotify (requires BlackHole)
satori translate --loopback

# Better accuracy (larger model)
satori translate --model large
```

### Translation
```bash
# Japanese to English
satori translate --loopback --language ja --translate-to en

# Hindi to English
satori translate --language hi --translate-to en

# Auto-detect language
satori translate --language auto --translate-to en
```

### Model Selection
```bash
# Fast (base model, ~142 MB)
satori translate --model base

# Balanced (medium model, ~1.5 GB) - Default
satori translate --model medium

# Best accuracy (large model, ~2.9 GB)
satori translate --model large
```

## 🏗️ Architecture

- **Backend**: whisper.cpp with Metal GPU support
- **Translation**: Meta NLLB-200-1.3B with PyTorch MPS
- **Audio**: PyAudio + BlackHole for system audio
- **UI**: Textual TUI framework with Rich formatting
- **Models**: Cached locally in `~/.satori/models/`

## 📊 Performance

| Configuration | Latency | Accuracy | Notes |
|--------------|---------|----------|-------|
| Base + CPU | 2.5-3.5s | 85-90% | Slow, not recommended |
| Medium + GPU | 1.2-1.5s | 92-95% | **Recommended** |
| Large + GPU | 1.5-2.0s | 95-97% | Best accuracy |

*Tested on M4 MacBook Pro*

## 🐛 Known Issues

None reported yet! This is the initial release.

## 🔮 Roadmap

See [ROADMAP.md](ROADMAP.md) for planned features:
- Additional translation languages
- Streaming API support
- Web interface
- Windows/Linux support

## 🤝 Contributing

Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 📝 License

MIT License - see [LICENSE](LICENSE) for details

## 🙏 Acknowledgments

- [whisper.cpp](https://github.com/ggerganov/whisper.cpp) - C++ port of OpenAI Whisper
- [Meta NLLB-200](https://github.com/facebookresearch/fairseq/tree/nllb) - Translation models
- [Textual](https://github.com/Textualize/textual) - TUI framework

---

**Full Changelog**: Initial release
