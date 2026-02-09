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
  version "0.8.0-dev.64+623f204"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.64+623f204/streb-dev_darwin_arm64.tar.gz"
      sha256 "500f8fa525beb44e68dc1373502a781d01debab9378a392c6dc06cf33bc08316"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.64+623f204/streb-dev_darwin_amd64.tar.gz"
      sha256 "13bfd6366405ebbe8cf10b03d3232ea7d47dda131215490eb16e96bb383ad686"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.64+623f204/streb-dev_linux_amd64.tar.gz"
      sha256 "5235d8ed4da05656fc6462270a28b3c33e5a01b06acedd0c045391d3a1acb323"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
