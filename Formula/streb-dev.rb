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
  version "0.8.0-dev.41+a5aa4c0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.41+a5aa4c0/streb-dev_darwin_arm64.tar.gz"
      sha256 "4e147264067c63041eafd8492f8fc70c47ad7ba8809f0ed1e1a1f2f227fac352"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.41+a5aa4c0/streb-dev_darwin_amd64.tar.gz"
      sha256 "302656f99eb66bf12aa81cf8c7353617aae1fbe30d53d87e020d377cda9b9ef7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.41+a5aa4c0/streb-dev_linux_amd64.tar.gz"
      sha256 "fbecfde02f5c4c529399d0c562732a476e01e9fd1594eaf5516e468eeb105e09"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
