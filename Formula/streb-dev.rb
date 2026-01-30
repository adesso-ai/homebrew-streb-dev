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
  version "0.8.0-dev.12+05d0d46"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.12+05d0d46/streb-dev_darwin_arm64.tar.gz"
      sha256 "e1f208f3f40f5963a5082af3a836ae74de2f2c8ffffb12d413c292e946cc7882"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.12+05d0d46/streb-dev_darwin_amd64.tar.gz"
      sha256 "0c43c477d1debe9a5b146c34089bb2d664c52cedd2e652ef08e2597f058b05de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.12+05d0d46/streb-dev_linux_amd64.tar.gz"
      sha256 "274908c67ab530cc6f5ae0ced29adcd0b7da8a5ce802d5ba10cb7d65562e50fe"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
