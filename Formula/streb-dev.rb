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
  version "0.8.0-dev.39+fcb1b72"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.39+fcb1b72/streb-dev_darwin_arm64.tar.gz"
      sha256 "5fb3cb9f5ccfdc785831cdee1213883f8bcb44a69cb17402d07632b3e62d4572"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.39+fcb1b72/streb-dev_darwin_amd64.tar.gz"
      sha256 "310388b3a4d6e955fcda3cd208a7bc068f0422e7705beacdebe1099673399f69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.39+fcb1b72/streb-dev_linux_amd64.tar.gz"
      sha256 "232abeb17924896c0bb778789fdced8a299b3dd5ce8e198cefdc25b1938ae26f"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
