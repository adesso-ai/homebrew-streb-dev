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
  version "0.8.0-dev.147+3101d9f"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.147+3101d9f/streb-dev_darwin_arm64.tar.gz"
      sha256 "9753f5a49a09f8b470c4524202071a9f2eaf2a9df5b96c6ade814cb4ea4ddc8f"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.147+3101d9f/streb-dev_darwin_amd64.tar.gz"
      sha256 "09f4fc23a808777d4e2aa6deec80da14aca46d91a8c4bd92403b29190945a190"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.147+3101d9f/streb-dev_linux_amd64.tar.gz"
      sha256 "94453a0bceda4ff8a2664b0a0745830f3e69dd4319c8923e8bc12844195374ca"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
