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
  version "0.8.0-dev.51+f02d7fd"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.51+f02d7fd/streb-dev_darwin_arm64.tar.gz"
      sha256 "8485c50263f5da4dbf8f4e6a41ecfe93d259686029b7908bb60d19acd1799eb8"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.51+f02d7fd/streb-dev_darwin_amd64.tar.gz"
      sha256 "d8a21ebe0410682c9869c32c4c06a4d3d54709abf96fcaf6cc497262559b13f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.51+f02d7fd/streb-dev_linux_amd64.tar.gz"
      sha256 "f62b127629be71025dab10bd0c2956924f151da1b833f3416b133e358b240e32"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
