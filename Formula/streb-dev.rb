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
  version "0.8.0-dev.86+8b164ad"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.86+8b164ad/streb-dev_darwin_arm64.tar.gz"
      sha256 "e02c65eac5470035b19ba419b19382d9b89cfc860653155c36f2e02ae309e2f6"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.86+8b164ad/streb-dev_darwin_amd64.tar.gz"
      sha256 "c5e4c11ee6a4de12de26c57d3ae2498e0a028f2242cc8659fa4aca3b29a0b329"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.86+8b164ad/streb-dev_linux_amd64.tar.gz"
      sha256 "f87af0a3a942ed151f9924d42181f20b0cea97415fa3de0070877c18a74802cb"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
