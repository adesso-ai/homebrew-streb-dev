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
  version "0.8.0-dev.100+b9f5e88"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.100+b9f5e88/streb-dev_darwin_arm64.tar.gz"
      sha256 "181895907f9428968cdcf6771bed6ef50d8f620905b005488f67268557ba0ea0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.100+b9f5e88/streb-dev_darwin_amd64.tar.gz"
      sha256 "5c10e27a90a7d25336bb64eeeebb92575b298c71a0d7ad62cc119383ed6dbfe7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.100+b9f5e88/streb-dev_linux_amd64.tar.gz"
      sha256 "f7bedb1ea90cc51b33a8904730f0b3158e492300225a8e4e53a3190cf2bcf4be"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
