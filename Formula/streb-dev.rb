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
  version "0.8.0-dev.123+6497175"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.123+6497175/streb-dev_darwin_arm64.tar.gz"
      sha256 "b644e7badc1da82dfed9bb335532b2b229c5642558bed84411d2654940f7d2b2"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.123+6497175/streb-dev_darwin_amd64.tar.gz"
      sha256 "cd31d71172be9e2ff3e8cd3c67c816a12d69af8fb3e199e0a0b3bcc92564d5cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.123+6497175/streb-dev_linux_amd64.tar.gz"
      sha256 "b893c69b5e94999e271c4105886c05df737b0e0ff7eb28461b93561fcdb7eb2b"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
