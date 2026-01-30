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
  version "0.8.0-dev.20+22430fe"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.20+22430fe/streb-dev_darwin_arm64.tar.gz"
      sha256 "50d64f8403d4ef23f1dc48cb4634caf5753a56064d38d0c5294d582ccb283998"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.20+22430fe/streb-dev_darwin_amd64.tar.gz"
      sha256 "ca4954d2c31c3798c4b3cacd74e16eef62044a1cd8c695f169b5aa9b03097dde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.20+22430fe/streb-dev_linux_amd64.tar.gz"
      sha256 "3355e597ea7bce659bdb6098fe09f001d8ed87c446b7757017d517aad57c9ce4"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
