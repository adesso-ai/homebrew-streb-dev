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
  version "0.8.0-dev.60+5556d6a"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.60+5556d6a/streb-dev_darwin_arm64.tar.gz"
      sha256 "96199a420e1e1cd65eaea15fecf83a57f09fc71a5c53b30af2034ac67254b0b8"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.60+5556d6a/streb-dev_darwin_amd64.tar.gz"
      sha256 "794c80d2d2f7c9b5ca2ae45735ba44b92ac158346ad46237ada2f59ca8ee0783"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.60+5556d6a/streb-dev_linux_amd64.tar.gz"
      sha256 "eb734bf525ef6582d940e4825cc6d4a92e0043bd215961f6226dbc49394e6949"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
