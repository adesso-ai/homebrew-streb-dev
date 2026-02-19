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
  version "0.8.0-dev.120+86171e2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.120+86171e2/streb-dev_darwin_arm64.tar.gz"
      sha256 "8cfb12dac7c2cd24da93b65632f2cf02ceb06194e740baa59742d2fe9c132d98"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.120+86171e2/streb-dev_darwin_amd64.tar.gz"
      sha256 "054feab269a24d1e33e5e76948d90408b7f4840f549426f3ffadc0ed47de2ff4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.120+86171e2/streb-dev_linux_amd64.tar.gz"
      sha256 "8625306f3a6d4d09b305aacb9c290e6549e83dca6d7f35e4ed026ca72f0819fe"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
