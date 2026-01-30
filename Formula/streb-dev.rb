# Homebrew formula for strebdev (development builds)
#
# Installation:
#   brew tap adesso-ai/streb-dev https://github.com/adesso-ai/homebrew-streb-dev
#   brew install strebdev
#
# Auto-updated by GitHub Actions on each push to develop.

class StrebDev < Formula
  desc "CLI tool for bootstrapping Claude Code development environments (dev build)"
  homepage "https://strebcli.dev"
  version "0.8.0-dev.10+8be58de"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.10+8be58de/streb-dev_darwin_arm64.tar.gz"
      sha256 "1a5c1d781a3b6af8b1957684e6be1e0860511c26b0c6a8f5999a82f9e45e6fa3"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.10+8be58de/streb-dev_darwin_amd64.tar.gz"
      sha256 "97d0b9b907d6a0bde014b8de0c72be2b04d9be8d0abd365b06b98ebe4b4fe899"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.10+8be58de/streb-dev_linux_amd64.tar.gz"
      sha256 "d3fe2516a30c736aa2a788ee6e1f53f1ffdd6021e771f9ffd8958997f0f1f0b5"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
