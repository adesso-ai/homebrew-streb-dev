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
  version "0.9.1-dev.0+c7c356f"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.9.1-dev.0+c7c356f/streb-dev_darwin_arm64.tar.gz"
      sha256 "b5bbe04a48307fc529dfd052c462f5863c3ff6f7047f8040e00ced836e6e85e6"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.9.1-dev.0+c7c356f/streb-dev_darwin_amd64.tar.gz"
      sha256 "90dc2f557d3957709a0a775edacec9b1dee9f1b528b6a01b0c035796d30194d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.9.1-dev.0+c7c356f/streb-dev_linux_amd64.tar.gz"
      sha256 "04e942eefb796270cae0b46a95295ce8e1099a3d6305ff47643f28caa65df092"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
