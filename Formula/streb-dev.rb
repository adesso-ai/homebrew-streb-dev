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
  version "0.7.18-dev.11+5e605fc"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.11+5e605fc/streb-dev_darwin_arm64.tar.gz"
      sha256 "bf1f23f7d935c58bfa2f3385a1524f3e94b9aa87857e31b7c0ae46845f6839d3"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.11+5e605fc/streb-dev_darwin_amd64.tar.gz"
      sha256 "d0e7381a1877deac6571f00be1560c20c6361debad981e69efdc8a4cb218696a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.11+5e605fc/streb-dev_linux_amd64.tar.gz"
      sha256 "f899ec74a64f9341d0c3fe53dd214f74c1587a3a06107381e9916e9edcc4cd6b"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
