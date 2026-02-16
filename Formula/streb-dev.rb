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
  version "0.8.0-dev.92+2bda04a"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.92+2bda04a/streb-dev_darwin_arm64.tar.gz"
      sha256 "d86835343bcda6d674dfb7c1c07c1e1e24d9ad9883b36854e93b809c110699f3"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.92+2bda04a/streb-dev_darwin_amd64.tar.gz"
      sha256 "cd8752c45d73805bb4dbe748035b2f18955380671b5ff66a793720fd89d7fba4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.92+2bda04a/streb-dev_linux_amd64.tar.gz"
      sha256 "63ad9b2daa8361e364a9601ae885832b188473539f1e216ba0c01807f4defff2"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
