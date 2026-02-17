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
  version "0.8.0-dev.102+53f84f7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.102+53f84f7/streb-dev_darwin_arm64.tar.gz"
      sha256 "e89e52d4475c09c8d2308580d49b9cfa5ecfb858fd6d777dcb6c3ce8cbb94505"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.102+53f84f7/streb-dev_darwin_amd64.tar.gz"
      sha256 "5511de00e07c774a1848b2d9b2e436623debf3ea7ff0f0f66e6cad4dcdb8e4fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.102+53f84f7/streb-dev_linux_amd64.tar.gz"
      sha256 "a77f991e22c13f46be2a16a24bcb03f6470bcd2fd9ddd6b3dc4856ae1f8a11d3"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
