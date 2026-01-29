# Homebrew formula for strebdev (development builds)
#
# Installation:
#   brew tap adesso-ai/streb-dev https://github.com/adesso-ai/homebrew-streb-dev
#   brew install strebdev
#
# Auto-updated by GitHub Actions on each push to develop.

class Strebdev < Formula
  desc "CLI tool for bootstrapping Claude Code development environments (dev build)"
  homepage "https://strebcli.dev"
  version "0.7.18-dev.10+c32801c"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.10+c32801c/streb-dev_darwin_arm64.tar.gz"
      sha256 "ff64b5d206e5d2102705be9577d61e5ee120a1f634961c240a49db7fec8c8505"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.10+c32801c/streb-dev_darwin_amd64.tar.gz"
      sha256 "f5a140d1068ebee525e890c135e82245276becfd5819ce6c8ace523c2be396db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.10+c32801c/streb-dev_linux_amd64.tar.gz"
      sha256 "2a18093fb8e40effdd29afa35271ef6f8a12e0f56c98f518de85d8abadcd80e1"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
