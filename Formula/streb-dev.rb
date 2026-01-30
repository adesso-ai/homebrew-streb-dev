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
  version "0.8.0-dev.3+d75743a"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.3+d75743a/streb-dev_darwin_arm64.tar.gz"
      sha256 "75341576c1ae9f9d3c8f0f2ee6889af04a7c2d588b737e52968a17c8c610df85"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.3+d75743a/streb-dev_darwin_amd64.tar.gz"
      sha256 "a33776345172cfb10e38c3e1a8280dc1b846ea4468e9d82bb2128ad190561ec0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.3+d75743a/streb-dev_linux_amd64.tar.gz"
      sha256 "480a19959ea6be078b4e4653b2545ac2e93fc2a9f3f9d12ccad140b1adb3ca53"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
