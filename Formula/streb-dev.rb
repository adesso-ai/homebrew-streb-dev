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
  version "0.8.0-dev.42+5853228"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.42+5853228/streb-dev_darwin_arm64.tar.gz"
      sha256 "62fae3a73eb7259fa72656026eacab907a2b8e54d558dfb66b2a1dc388f36627"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.42+5853228/streb-dev_darwin_amd64.tar.gz"
      sha256 "63a6b78eefd35e001d73ed32fd0eeb0284291c5c8380c57a0bf8d21a1af6c74b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.42+5853228/streb-dev_linux_amd64.tar.gz"
      sha256 "fe6c4b6f027903e63434a8d1f2506a65919dd228da8ebb52a61f19f558ce9890"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
