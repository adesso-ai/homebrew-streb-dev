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
  version "0.8.0-dev.52+0657616"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.52+0657616/streb-dev_darwin_arm64.tar.gz"
      sha256 "83e8d014190ef69c25973f351e643e0f88aea1c5d1717863a5bb797b0a4a997c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.52+0657616/streb-dev_darwin_amd64.tar.gz"
      sha256 "ab372cda73e205795735bcbdfb2f77042e3d0bdc4dfe9099a3e88c251e4f4ad7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.52+0657616/streb-dev_linux_amd64.tar.gz"
      sha256 "ce237ed7e10f0914cd94a5bdd4f432b3c4a2d8e09587ddef8390d908202add4d"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
