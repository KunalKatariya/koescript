class Koescript < Formula
  include Language::Python::Virtualenv

  desc "Real-time multilingual transcription and translation with GPU acceleration"
  homepage "https://github.com/KunalKatariya/koescript"
  url "https://github.com/KunalKatariya/koescript/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "373d539a331e5ded6e8f28110914abd4c680bb0ea99d1f8fba24d97968fa1bb6"
  license "MIT"
  version "0.2.0"

  depends_on "python@3.11"
  depends_on "portaudio"

  def install
    # Create a virtual environment with pip
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "venv", libexec

    # Install the package and its dependencies
    system libexec/"bin/pip", "install", "--upgrade", "pip", "setuptools", "wheel"
    system libexec/"bin/pip", "install", buildpath

    # Create a wrapper script
    (bin/"koescript").write_env_script libexec/"bin/koescript", {}
  end

  def caveats
    <<~EOS
      Koescript CLI has been installed!

      First-time setup:
        1. Run: koescript init
           This will download and set up whisper.cpp with Metal GPU acceleration.

        2. Install BlackHole for audio capture:
           brew install blackhole-2ch

        3. Configure audio routing:
           - Open Audio MIDI Setup
           - Create a Multi-Output Device with your speakers + BlackHole
           - In Koescript settings, select BlackHole as input device

      Usage examples:
        # Real-time transcription
        koescript transcribe

        # With translation (Japanese → English)
        koescript transcribe --translate --target-lang en

        # Configure settings
        koescript config

      For more information, visit:
        https://github.com/KunalKatariya/koescript
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/koescript --version")
    assert_match "Usage:", shell_output("#{bin}/koescript --help")
  end
end
