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
  version "0.8.0-dev.16+9620265"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.16+9620265/streb-dev_darwin_arm64.tar.gz"
      sha256 "5376a18f0b63e60dded9d3642a7910381fd0a25161915be7084c08719d211377"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.16+9620265/streb-dev_darwin_amd64.tar.gz"
      sha256 "4cc2480496c77cac9031e04edeef9bd77c8271c207587866848676b1373b7abd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.16+9620265/streb-dev_linux_amd64.tar.gz"
      sha256 "4aeede14f1bed923435be8f8c66193d2410b429463738c3a7592901ec7f3b739"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
