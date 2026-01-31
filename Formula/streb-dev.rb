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
  version "0.8.0-dev.49+0ba7882"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.49+0ba7882/streb-dev_darwin_arm64.tar.gz"
      sha256 "dbea6209caf53a383d21ac2ae4462811a746573dca806acc2e619139e4df98e2"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.49+0ba7882/streb-dev_darwin_amd64.tar.gz"
      sha256 "c9b0035c46a11e48891f500aa7f86c723c011297f3dfffe15d230cc181c4b316"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.49+0ba7882/streb-dev_linux_amd64.tar.gz"
      sha256 "877f53e3e11eebb67ecd5cb19cff142b5c5c92ba8964bde5075a512b0a12a543"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
