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
  version "0.8.0-dev.88+e44757e"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.88+e44757e/streb-dev_darwin_arm64.tar.gz"
      sha256 "75d509af10a7904206fd7ac961f5962fd6a8f56fdf8dde9dbe05734852f48999"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.88+e44757e/streb-dev_darwin_amd64.tar.gz"
      sha256 "8d851467fc77c69c21db87985cb368e5fcebefb8ccb7a5ec8e9f230a38e9cc8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.88+e44757e/streb-dev_linux_amd64.tar.gz"
      sha256 "e432bf584f239af509aa2d38ee410198bd71428227836562feda27aa0f904857"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
