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
  version "0.8.0-dev.103+19b2987"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.103+19b2987/streb-dev_darwin_arm64.tar.gz"
      sha256 "4ef883a0db96507c4a8b6217031aa7277d3c2429c0a248bdb6c6f179e84b99da"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.103+19b2987/streb-dev_darwin_amd64.tar.gz"
      sha256 "3944c32309bc9beac602b9239c85299f374ba412e598515862796b6619450913"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.103+19b2987/streb-dev_linux_amd64.tar.gz"
      sha256 "b178f96e404667adb36901f1897fde89e01f4822a348de866b9646cc618f9cb2"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
