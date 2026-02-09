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
  version "0.8.0-dev.70+e97e7e0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.70+e97e7e0/streb-dev_darwin_arm64.tar.gz"
      sha256 "671abc477cd87afc919cf1f17c56e7b93508b3dc273768c3762bb42918ec6566"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.70+e97e7e0/streb-dev_darwin_amd64.tar.gz"
      sha256 "ba6a282e5bbe7a7e6b5f773a79bd9a579aa48e29e51754bb41e314c345c7a8fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.70+e97e7e0/streb-dev_linux_amd64.tar.gz"
      sha256 "faddcbb57fec4e4f75be51d93dacf1a426571a015dddaf0d929c3c786e3e2d55"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
