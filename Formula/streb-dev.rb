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
  version "0.8.0-dev.138+df1fcbe"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.138+df1fcbe/streb-dev_darwin_arm64.tar.gz"
      sha256 "ec5051ae876a96b419a4c5c11a9a87d7eca8aeabb34e80f3aa870856e3bf6bdf"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.138+df1fcbe/streb-dev_darwin_amd64.tar.gz"
      sha256 "0740366c2787c9f0940b4f6be486bcd1217ed671b75624595899c36ce5db963b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.138+df1fcbe/streb-dev_linux_amd64.tar.gz"
      sha256 "73083cde3b7df0c498d5c1cfc1f509c9b583d8d031123baa2328e770d3523201"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
