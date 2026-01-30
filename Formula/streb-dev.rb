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
  version "0.8.0-dev.1+21ad488"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.1+21ad488/streb-dev_darwin_arm64.tar.gz"
      sha256 "c18668b69771eaa28b2ea96f2e0f1d8654ea1fc3c52bd758732fbbc9b61d28ee"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.1+21ad488/streb-dev_darwin_amd64.tar.gz"
      sha256 "9b86483f854c156fb1ef178ebdc9eb1497fd7fa19e3bb921fb3e35f3f25787c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.1+21ad488/streb-dev_linux_amd64.tar.gz"
      sha256 "9085dd0b9edef01b61519d956002c681dea2ffc09ed5cccff580e6385ee90d89"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
