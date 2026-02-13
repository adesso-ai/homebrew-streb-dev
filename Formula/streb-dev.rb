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
  version "0.8.0-dev.79+b02bd98"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.79+b02bd98/streb-dev_darwin_arm64.tar.gz"
      sha256 "04b06ba139737d8a0639ff63760c95b396f7764ceb15bcd6a10d9ac8d87aa8a1"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.79+b02bd98/streb-dev_darwin_amd64.tar.gz"
      sha256 "12f06b85f2e75426d6668f26f3189ef8f6f71987a8c0939057f5ddfcf1b620d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.79+b02bd98/streb-dev_linux_amd64.tar.gz"
      sha256 "2b153562df9d3c081b8a5e2a6dbd46fce492ded0af5ae52e89c09967319846c7"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
