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
  version "0.8.0-dev.43+0135fcc"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.43+0135fcc/streb-dev_darwin_arm64.tar.gz"
      sha256 "56421e9e3a4233123f2ba7484a7fee1cd2bcf5dcc9417f39ec8ad3498d0a86a2"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.43+0135fcc/streb-dev_darwin_amd64.tar.gz"
      sha256 "4905375c896b922e1691963e9a0c8954bfdc7d5439507e9c893d096c15771f64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.43+0135fcc/streb-dev_linux_amd64.tar.gz"
      sha256 "253e4c43c55a7622b151b58d724456de4f4d3d0203b64ee1dd54227a2c8ea7a1"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
