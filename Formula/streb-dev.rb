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
  version "0.8.0-dev.73+5ac3350"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.73+5ac3350/streb-dev_darwin_arm64.tar.gz"
      sha256 "6fd0961fa9ac5cfbdb2bd2abcfec301d5454ca5f4726f648bbcc2ffbd3407c35"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.73+5ac3350/streb-dev_darwin_amd64.tar.gz"
      sha256 "d6026c1220bad4e2a80dac3b11c89a0a4ae0ac87b1b1b45e149ec13cba70ba48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.73+5ac3350/streb-dev_linux_amd64.tar.gz"
      sha256 "af37cd17decd300e1ccea181ec47839228ea8f8cee672b78fb930c16353f372d"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
