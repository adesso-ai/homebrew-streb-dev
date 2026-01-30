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
  version "0.8.0-dev.21+49d16b0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.21+49d16b0/streb-dev_darwin_arm64.tar.gz"
      sha256 "8ea0d0f167795460ee7537c98c087925497f09a5ab8f2bda12848711ccbaf9b2"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.21+49d16b0/streb-dev_darwin_amd64.tar.gz"
      sha256 "f2281b2e50e5fad22a10049bc214a0529b168880ae901d0d04122c7a73bcde21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.21+49d16b0/streb-dev_linux_amd64.tar.gz"
      sha256 "284fe96e6ea58aa3a525df0d2a14bf5f7e969298e2483bd7b00ce85e91c4948a"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
