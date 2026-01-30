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
  version "0.8.0-dev.19+cbdc6ca"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.19+cbdc6ca/streb-dev_darwin_arm64.tar.gz"
      sha256 "c300d387e86db5d2257bea43e326809ef509440248c29a0b53d4ebcee44334dd"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.19+cbdc6ca/streb-dev_darwin_amd64.tar.gz"
      sha256 "559ccb6f3ae73d57279256b9226bf5fa7329e93575c98e2937b1495c67cb89fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.19+cbdc6ca/streb-dev_linux_amd64.tar.gz"
      sha256 "5212ab05bf10fd92ac969b88caefa4c743c897ebabd02202809efbc96e4ecf8d"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
