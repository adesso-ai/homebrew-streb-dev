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
  version "0.8.0-dev.99+8ce9b93"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.99+8ce9b93/streb-dev_darwin_arm64.tar.gz"
      sha256 "53832b678daa3faa09dd0845a7501c73914167ab89bce05b2fbc50ab26adbb0d"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.99+8ce9b93/streb-dev_darwin_amd64.tar.gz"
      sha256 "6242a04ca3ebe593ba90c73f8e825a0cfc55360ae22f8e58c48a48f678c9f606"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.99+8ce9b93/streb-dev_linux_amd64.tar.gz"
      sha256 "3d26080d5f14d4f36421b2b4350dd8afd7ad650a07a539511364e2c506025f80"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
