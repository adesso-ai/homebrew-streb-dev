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
  version "0.8.0-dev.127+eb57920"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.127+eb57920/streb-dev_darwin_arm64.tar.gz"
      sha256 "4b35d180a1bdc46ad6dc1c27024d1e63571437e72509c80936b002c0841085c4"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.127+eb57920/streb-dev_darwin_amd64.tar.gz"
      sha256 "742a1e212d8d53272d1dd3f3f3b5a031ff0be122cc64aeaaa84bf8852ac99319"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.127+eb57920/streb-dev_linux_amd64.tar.gz"
      sha256 "db742e76e854b8d9422dff4143d4d1ad2311c08c2cea3c12e75b660926d0b1f2"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
