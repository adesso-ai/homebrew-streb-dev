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
  version "0.8.0-dev.4+3ec5ad8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.4+3ec5ad8/streb-dev_darwin_arm64.tar.gz"
      sha256 "5afbfb04b2aa4bc8eb6003dc378f2179a3a0159feb9fad269b0b048eac1a5944"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.4+3ec5ad8/streb-dev_darwin_amd64.tar.gz"
      sha256 "04416a7da3c02dc4c87b755c143371ce4bdb14f1814978698a3bec56e132b51f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.4+3ec5ad8/streb-dev_linux_amd64.tar.gz"
      sha256 "b5fd1751fa5706e16586a304df27dc7ff056f9c04d6656e6fc20b03ca348b5b7"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
