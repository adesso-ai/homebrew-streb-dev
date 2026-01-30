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
  version "0.8.0-dev.6+0647bc2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.6+0647bc2/streb-dev_darwin_arm64.tar.gz"
      sha256 "3a4459c092a756ff48c00eed5957a083005f56d2f96bfe0bbfd8808d8bbb9721"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.6+0647bc2/streb-dev_darwin_amd64.tar.gz"
      sha256 "c0969e7305b1eb5bd0aee7f91b102eeacad20e5f4b0039ff2723c896b4051d35"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.6+0647bc2/streb-dev_linux_amd64.tar.gz"
      sha256 "09b0346e5d577175e71ec8b3b837e79a033e481b374aa409b5b70a56afcb7889"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
