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
  version "0.8.0-dev.7+5f358c1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.7+5f358c1/streb-dev_darwin_arm64.tar.gz"
      sha256 "e9e7d27b418c14f8352edfa9fd51aeb3a517081c270ba92d9526cc3b079f5050"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.7+5f358c1/streb-dev_darwin_amd64.tar.gz"
      sha256 "686b8a38097ab86df93f21aba913dc6004d6d964df1e25db4f29d7f18c7c609b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.7+5f358c1/streb-dev_linux_amd64.tar.gz"
      sha256 "267505e0d5720e0abf939fea72cabfddb332fd88c5237bef44ba2fd4254ab8a7"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
