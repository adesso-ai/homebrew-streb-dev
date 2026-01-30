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
  version "0.8.0-dev.9+4aabefa"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.9+4aabefa/streb-dev_darwin_arm64.tar.gz"
      sha256 "49cc7ff2a8dc616cee1791b8e8ddc42bf5b9a8650322a72032f1f2c5009f372c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.9+4aabefa/streb-dev_darwin_amd64.tar.gz"
      sha256 "827fcd2878d7a7f4984373645a635f9353520606ab5bdb0ce36393cc75261e92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.9+4aabefa/streb-dev_linux_amd64.tar.gz"
      sha256 "fb882974c277555c2d6952a7243f8b93c45b1ac0e10bb8d17b44101d1c898a8e"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
