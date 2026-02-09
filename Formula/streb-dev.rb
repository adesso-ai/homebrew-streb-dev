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
  version "0.8.0-dev.61+71f237f"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.61+71f237f/streb-dev_darwin_arm64.tar.gz"
      sha256 "96935b64b77cb2eef498d0609ae1ad323e190642d0309cd264c96d8287da2790"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.61+71f237f/streb-dev_darwin_amd64.tar.gz"
      sha256 "8df24a06152239780fa2550f6ab606f8788770662107fd1b46c5fc6a7f9d1d0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.61+71f237f/streb-dev_linux_amd64.tar.gz"
      sha256 "c2b54ebacbf06121b3e8ae2455412ce59b4892f1849217e40b1142f5d2bdbb9d"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
