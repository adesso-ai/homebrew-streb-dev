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
  version "0.8.0-dev.91+61da311"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.91+61da311/streb-dev_darwin_arm64.tar.gz"
      sha256 "dfbbb9d47fb239e396cf4df0a1ac97b5c23e17699a2548e2e95253d92d03f89d"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.91+61da311/streb-dev_darwin_amd64.tar.gz"
      sha256 "e49fb5ccd5ecc5d70dfb99f4dbace1f46ee83ef30bde5e69e6c6a47732c0fbb6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.91+61da311/streb-dev_linux_amd64.tar.gz"
      sha256 "f1e7a6ddbe085c90dae9dc1bcb37f221da69a29a4214bc9c3db97dde4bbf9173"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
