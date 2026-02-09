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
  version "0.8.0-dev.67+77805d5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.67+77805d5/streb-dev_darwin_arm64.tar.gz"
      sha256 "b82145cfc0e6f8be2eef93566dcaebacacc034c849bf0ee5418da025911e11f0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.67+77805d5/streb-dev_darwin_amd64.tar.gz"
      sha256 "5e6a06a1ece0a7658c49b971b8f7b82afab12c66329ff050bee9e4ef89d42a0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.67+77805d5/streb-dev_linux_amd64.tar.gz"
      sha256 "19711e51aaa62353d8d1d20685d06e099df10caa97373de132e4359f48fd992a"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
