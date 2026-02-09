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
  version "0.8.0-dev.68+316163d"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.68+316163d/streb-dev_darwin_arm64.tar.gz"
      sha256 "86c5b0d69c88fbbcc6d0c13d71ebe7d83855c9a59afcc2ed3ae788a54d8e3d08"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.68+316163d/streb-dev_darwin_amd64.tar.gz"
      sha256 "306f7a247aa4ca436df15bbccbf38f2d31e598b41eb41d79b8a095107a03321f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.68+316163d/streb-dev_linux_amd64.tar.gz"
      sha256 "5d7bb37d5a2f37f34cbda9bac72c8aaad92133a0f861a2b0b2df3977ee7dfd24"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
