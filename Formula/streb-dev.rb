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
  version "0.8.0-dev.13+683bcad"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.13+683bcad/streb-dev_darwin_arm64.tar.gz"
      sha256 "885e57e90e0292210d570d4da766bfa73bb7815bc2fbae004407ede99f897c51"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.13+683bcad/streb-dev_darwin_amd64.tar.gz"
      sha256 "25e27b1760a46266b3aa135a6b57e66f5a15024871e0d565486437b4066f9b7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.13+683bcad/streb-dev_linux_amd64.tar.gz"
      sha256 "e85629916a549842d4f58a285a1bdb5b486a46ae3f3776cc56575c245c7b738d"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
