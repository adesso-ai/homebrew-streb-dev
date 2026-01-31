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
  version "0.8.0-dev.50+2a3a284"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.50+2a3a284/streb-dev_darwin_arm64.tar.gz"
      sha256 "ab720d2b1ebd590a07b92018c4466ab87b9365cf645f48a6f6e2a77ea59aae68"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.50+2a3a284/streb-dev_darwin_amd64.tar.gz"
      sha256 "4028b5bc8184e0b64d093ba3caba9c8cbfcdc56f5bb176c7bd9211cde90c0fa6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.50+2a3a284/streb-dev_linux_amd64.tar.gz"
      sha256 "d50cbe678925efcd05726ef5276a6bf8a71f5197f9dac5a1f8433dd9c0ed7ed4"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
