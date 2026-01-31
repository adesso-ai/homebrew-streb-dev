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
  version "0.8.0-dev.47+e22d3a4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.47+e22d3a4/streb-dev_darwin_arm64.tar.gz"
      sha256 "a567ab9ffa57cbd1b252ff00b0545802a6bb1a89648281e9896e0f65684740ab"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.47+e22d3a4/streb-dev_darwin_amd64.tar.gz"
      sha256 "43a460bd6adad7738548c05049cc67890a06432e8923a0e38beba4e559114b1e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.47+e22d3a4/streb-dev_linux_amd64.tar.gz"
      sha256 "e3ccc336bb9176a33265fd17209297f3a322bb745e16f3af0195ea4d2bd2de56"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
