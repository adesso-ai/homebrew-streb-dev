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
  version "0.8.0-dev.76+de34706"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.76+de34706/streb-dev_darwin_arm64.tar.gz"
      sha256 "dccef33d44fa8917de1c0762afeafe2aca1c75a3bf1693b0007281d7bf7c95ef"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.76+de34706/streb-dev_darwin_amd64.tar.gz"
      sha256 "8e8fbc297fe47111926926106995c5163f873eaa79e749b4db2af29f1420d4ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.76+de34706/streb-dev_linux_amd64.tar.gz"
      sha256 "0c33aa12b885ffb27d42267ea3c2aff3eddc675cbfb9d6a2a77d388ed51bcda2"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
