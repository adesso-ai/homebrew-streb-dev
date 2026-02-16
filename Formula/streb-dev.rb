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
  version "0.8.0-dev.95+55f4866"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.95+55f4866/streb-dev_darwin_arm64.tar.gz"
      sha256 "fada3ad8b3c1e24b5d1b4080228ce9d14d337f9f895cdc4a528fb4a9891a2697"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.95+55f4866/streb-dev_darwin_amd64.tar.gz"
      sha256 "05fd114aeff538107293dc0e586f7c8ebf80c4c1952dc17c206f628c7aff366f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.95+55f4866/streb-dev_linux_amd64.tar.gz"
      sha256 "87f4445c106b43177d3b8003417983122abd75092f7f874f59241e8e3eec53fc"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
