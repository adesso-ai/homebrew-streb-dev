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
  version "0.8.0-dev.18+b8fe2df"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.18+b8fe2df/streb-dev_darwin_arm64.tar.gz"
      sha256 "db5803a6a68cb67ec57f9bbdcd65bf5ae32e4fd222862992e4a570dfd9da8aeb"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.18+b8fe2df/streb-dev_darwin_amd64.tar.gz"
      sha256 "ea4a4deb74b5f9c480c4f8fcfa0050ab0deb69feb2227a93cd97b224342e11ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.18+b8fe2df/streb-dev_linux_amd64.tar.gz"
      sha256 "986304825ebf4ae85d496bb522a1e4e19ce9962463ae196db500a380b3b491d5"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
