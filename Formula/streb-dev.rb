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
  version "0.7.18-dev.13+0e1da70"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.13+0e1da70/streb-dev_darwin_arm64.tar.gz"
      sha256 "0c09f7246ad3fa102397fc67797a8187da7014405bb46420975698f3f122e2df"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.13+0e1da70/streb-dev_darwin_amd64.tar.gz"
      sha256 "b386121664a1daef2479f719185d95095ffbb6452885ba52d49a079e607c256e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.13+0e1da70/streb-dev_linux_amd64.tar.gz"
      sha256 "17444008b596fc4cf9759ce3a514cfc0ca596b6a29db9e915d70e1cc8de1f3e8"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
