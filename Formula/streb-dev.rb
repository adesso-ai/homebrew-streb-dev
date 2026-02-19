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
  version "0.8.0-dev.137+c7e041e"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.137+c7e041e/streb-dev_darwin_arm64.tar.gz"
      sha256 "b56fa4bd9e26143d7ff3acb9946647cbeb7375ddce9ed031c57e280f0505d1bc"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.137+c7e041e/streb-dev_darwin_amd64.tar.gz"
      sha256 "aabe4cdc39683c12064e63fd723a79e70cfc17aaa99138c7c9f750cbe849dcfa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.137+c7e041e/streb-dev_linux_amd64.tar.gz"
      sha256 "69f862f209584ad101b9c53ec7bba01298fc342f57e30d5c48772cb5cd52c5d0"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
