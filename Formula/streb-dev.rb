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
  version "0.8.0-dev.119+a9e363c"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.119+a9e363c/streb-dev_darwin_arm64.tar.gz"
      sha256 "3d9daf009b09abe886b1bf5521a7563fbd145e75069e9e5b26ec7afeec2552c0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.119+a9e363c/streb-dev_darwin_amd64.tar.gz"
      sha256 "8cd6c06d9cde80b6658ed66352463071d9a0711ec86d53174415103ff811958d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.119+a9e363c/streb-dev_linux_amd64.tar.gz"
      sha256 "290ea698453bf327589479336a542a80a22633c11696fdb13be53709b877d55f"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
